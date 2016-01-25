class Profile < ActiveRecord::Base
  belongs_to :user
  has_many :skills
  has_many :valuetaggings
  has_many :values, through: :valuetaggings
end
