class AddImageToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :image_url, :text
  end
end
