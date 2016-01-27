class ProfilesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_profile, only: [:show, :edit, :update, :destroy]
  # end

  def index
  	puts "*" * 50
  	puts current_user
    if current_user
      @profile = current_user.profile      
    end
    @profiles = Profile.all
  end

  def mentors
    @profiles = Profile.where(role: 'mentor')
  end

  def proteges
    @profiles = Profile.where(role: 'protege')
  end

  def show
    @experiences = @profile.experiences
    @valuetaggings = @profile.valuetaggings
    @values = Value.all
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

  private
  # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @profile = Profile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_params
      params.require(:profile).permit(:role, :quote, :name, :user_id, :insights)
    end
end
