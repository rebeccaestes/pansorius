class ProfilesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :mentors, :proteges]
  before_action :set_profile, only: [:show, :edit, :update, :destroy]
  before_action :search_params, only: [:index]
  # end

  def index
    @values = Value.all
    session[:value] = nil
    session[:role] = nil
    session[:location] = nil
    # refactor - can reassign @profiles each time? helper?
    @profiles_by_value = @value.present? ? Value.find(@value).profiles : Profile.all
    @profiles_by_role = @profiles_by_value.all_or_role(@role)
    @profiles_by_location = @location.present? ? @profiles_by_role.search_by_location(@location) : @profiles_by_role
    @profiles = @profiles_by_location
    puts '*' * 50
    puts params.inspect
    puts "value #{session[:value]}"
    puts "role #{session[:role]}"
    puts "loc #{session[:location]}"
    @vtags = Valuetagging.all
  end

  def show
    @experiences = @profile.experiences
    @user = current_user
    @user_vals = @profile.values.take(3)
    @user_skills = @profile.skills.take(6)
  end

  def new
    if current_user.profile
      redirect_to current_user.profile, notice: 'A profile for this user already exists.'
    else
      @profile = Profile.new
    end
  end

  def create
    @profile = Profile.new(profile_params)
    @profile.user = current_user

    respond_to do |format|
      if @profile.save
        format.html { redirect_to @profile, notice: 'Profile was successfully created.' }
        format.json { render :show, status: :created, location: @profile }
      else
        format.html { render :new }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    if current_user != @profile.user
      puts '*' * 50
      puts 'wrong user'
      redirect_to current_user.profile, alert: 'Permission denied'
    end
  end

  def update
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to @profile, notice: 'Profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @profile }
      else
        format.html { render :edit }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

#TODO: warning are you sure
  def destroy
    @profile.destroy
    redirect_to '/'
  end

  def locationSearch
    @profiles = Profile.search_by_location(params[:location]);
    render :index
  end

  private
  # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @profile = Profile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_params
      params.require(:profile).permit(:role, :quote, :name, :user_id, :insights, :location, :image_url, :twitter, :facebook, :linkedin, :instagram, :avatar)
    end

    # get search variables and set session
    def search_params
      @role = params[:role] || session[:role]
      session[:role] = @role
      @value = params[:search] ? params[:search][:value] : session[:value]
      session[:value] = @value
      @location = params[:location] || session[:location]
      session[:location] = @location
    end
end
