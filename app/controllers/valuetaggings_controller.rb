class ValuetaggingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_valuetagging, only: [:edit, :update, :destroy]
  before_action :set_profile


  def index
      @values = Value.all
  end

  # GET /experiences/new
  def new
    @values = Value.all
    if current_user != @profile.user
      puts '*' * 50
      puts 'wrong user'
      redirect_to current_user.profile, alert: 'Permission denied'
    else
      @valuetag = Valuetagging.new
    end
  end


  def create
    @profile = current_user.profile
    @profile.valuetaggings.create!(valuetag_params)
    redirect_to current_user.profile
    # puts "***"
    # puts params
    # @valuetag = Valuetagging.new
    # @valuetag.profile = @profile

  end
  private
  #   # Use callbacks to share common setup or constraints between actions.
  def set_profile
    @profile = Profile.find(params[:profile_id])
  end

  def valuetag_params
    params.require(:valuetagging).permit(:profile_id)
  end
end
