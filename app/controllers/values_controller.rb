class ValuesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_experience, only: [:show, :edit, :update, :destroy]


  def index
    if current_user
      @values = current_user.values
    else
      @values = Value.all
    end
  end
  def show
  end
  def new
    @profile = Profile.find(params[:profile_id])
    @value = Value.new
  end
  def create
    @profile = Profile.find(params[:profile_id])
    @value = current_user.values.create!(value_params)
    redirect_to profile_path(@profile)

  end
  def show


  end


  def edit
  end





  def update
    # respond_to do |format|
      # if @experience.update(experience_params)
        # format.html { redirect_to @experience, notice: 'Experience was successfully updated.' }
        # format.json { render :show, status: :ok, location: @experience }
      # else
        # format.html { render :edit }
        # format.json { render json: @experience.errors, status: :unprocessable_entity }
      # end
    # end
  end

  # DELETE /experiences/1
  # DELETE /experiences/1.json
  def destroy
    # @experience.destroy
    # respond_to do |format|
      # format.html { redirect_to experiences_url, notice: 'Experience was successfully destroyed.' }
      # format.json { head :no_content }
    # end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def value_params
      params.require(:value).permit(:user_id, :profile_id, :value)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def experience_params
      # params.require(:experience).permit(:role, :company, :start_date, :end_date, :description, :profile_id)
    end
end
