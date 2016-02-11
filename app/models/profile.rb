class Profile < ActiveRecord::Base
  belongs_to :user, dependent: :destroy
  has_many :skilltaggings, dependent: :destroy
  has_many :skills, through: :skilltaggings
  has_many :valuetaggings, dependent: :destroy
  has_many :values, through: :valuetaggings
  has_many :experiences, dependent: :destroy
  mount_uploader :avatar, AvatarUploader, :mount_on => :avatar
  include PgSearch
  pg_search_scope :search_by_location, :against => :location
  scope :all_or_role, ->(role) do
    role.present? ? where(role: role) : all
  end
end
