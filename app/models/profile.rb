class Profile < ActiveRecord::Base
  belongs_to :user, dependent: :destroy
  has_many :skilltaggings, dependent: :destroy
  has_many :skills, through: :skilltaggings
  has_many :valuetaggings, dependent: :destroy
  has_many :values, through: :valuetaggings
  has_many :experiences, dependent: :destroy
  mount_uploader :avatar, AvatarUploader, :mount_on => :avatar
end
