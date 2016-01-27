class ValuetaggingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_valuetagging, only: [:edit, :update, :destroy]
  before_action :set_profile


  def index
      @values = Value.all
  end

  # GET /experiences/new
  def new
    if current_user != @profile.user
      puts '*' * 50
      puts 'wrong user'
      redirect_to current_user.profile, alert: 'Permission denied'
    else
      @value = Valuetagging.new
    end
  end

  # # GET /experiences/1/edit
  # def edit
  # end
  #
  # # POST /experiences
  # # POST /experiences.json
  # def create
  #   @experience = Experience.new(experience_params)
  #
  #   respond_to do |format|
  #     if @experience.save
  #       format.html { redirect_to @experience, notice: 'Experience was successfully created.' }
  #       format.json { render :show, status: :created, location: @experience }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @experience.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end
  #
  # # PATCH/PUT /experiences/1
  # # PATCH/PUT /experiences/1.json
  # def update
  #   respond_to do |format|
  #     if @experience.update(experience_params)
  #       format.html { redirect_to @experience, notice: 'Experience was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @experience }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @experience.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end
  #
  # # DELETE /experiences/1
  # # DELETE /experiences/1.json
  # def destroy
  #   @experience.destroy
  #   respond_to do |format|
  #     format.html { redirect_to experiences_url, notice: 'Experience was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end
  #
  private
  #   # Use callbacks to share common setup or constraints between actions.
  #   def set_experience
  #     @experience = Experience.find(params[:id])
  #   end
  def set_profile
    @profile = Profile.find(params[:profile_id])
  end#
  #   # Never trust parameters from the scary internet, only allow the white list through.
  #   def experience_params
  #     params.require(:experience).permit(:role, :company, :start_date, :end_date, :description, :profile_id)
  #   end
end
