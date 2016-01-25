class Skill < ActiveRecord::Base
  has_many :skilltaggings
  has_many :profiles, through: :skilltaggings
end