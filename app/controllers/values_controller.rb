class ValuesController < ApplicationController
  before_action :set_experience, only: [:show, :edit, :update, :destroy]


  def index
    @values = Value.all
  end

  def show
  end

  def new
    # @experience = Experience.new
  end

  def edit
  end


  def create
    # @experience = Experience.new(experience_params)

    # respond_to do |format|
      # if @experience.save
        # format.html { redirect_to @experience, notice: 'Experience was successfully created.' }
        # format.json { render :show, status: :created, location: @experience }
      # else
        # format.html { render :new }
        # format.json { render json: @experience.errors, status: :unprocessable_entity }
      # end
    # end
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
    def set_experience
      # @experience = Experience.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def experience_params
      # params.require(:experience).permit(:role, :company, :start_date, :end_date, :description, :profile_id)
    end
end
