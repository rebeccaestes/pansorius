class Skilltagging < ActiveRecord::Base
  belongs_to :profile
  belongs_to :skill
end