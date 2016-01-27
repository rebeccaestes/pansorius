class Value < ActiveRecord::Base
  has_many :values
  has_many :profiles, through: :values
end
