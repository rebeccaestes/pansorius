class Valuetagging < ActiveRecord::Base
  belongs_to :profile
  belongs_to :value
end
