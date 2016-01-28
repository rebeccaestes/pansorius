class SkilltaggingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_skilltagging, only: [:edit, :update, :destroy]
  before_action :set_profile


  def index
    @skills = Skill.all
    @current_skills = @profile.skills.take(6)
    @skilltag = Skilltagging.new
  end

  # GET /experiences/new
  def new
    @skills = Skill.all
    @current_skills = @profile.skills.take(6)
    if current_user != @profile.user
      puts '*' * 50
      puts 'wrong user'
      redirect_to current_user.profile, alert: 'Permission denied'
    else
      @skilltag = Skilltagging.new
    end
  end


  def create
    @profile = current_user.profile
    @stag = @profile.skilltaggings.create!(skilltag_params)
    puts "***"
    puts @stag.skill.skill
    puts @stag.profile.name
    redirect_to current_user.profile
  end
  private
  #   # Use callbacks to share common setup or constraints between actions.
  def set_profile
    @profile = Profile.find(params[:profile_id])
  end

  def skilltag_params
    params.require(:skilltagging).permit(:profile_id, :skill_id, :value)
  end
end
