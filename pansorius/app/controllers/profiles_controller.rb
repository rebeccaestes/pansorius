class ProfilesController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  # end
  def index
    authenticate_user!
    @profiles = Profile.all
  end
end
