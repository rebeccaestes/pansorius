class Value < ActiveRecord::Base
  has_many :valuetaggings
  has_many :profiles, through: :valuetaggings
end
