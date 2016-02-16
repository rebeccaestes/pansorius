class ValuesController < ApplicationController
  before_action :authenticate_user!
  # before_action :set_valuetagging, only: [:edit, :update, :destroy]
  before_action :set_profile

  def index
    @values = @profile.values
    render json: @values
  end

  private
  # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @profile = Profile.find(params[:profile_id])
    end
end
