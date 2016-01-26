class Profile < ActiveRecord::Base
  belongs_to :user
  has_many :skilltaggings
  has_many :skills, through: :skilltaggings
  has_many :valuetaggings
  has_many :values, through: :valuetaggings
  has_many :experiences
end
