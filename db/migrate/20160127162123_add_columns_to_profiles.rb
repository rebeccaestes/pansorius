class AddColumnsToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :location, :string
    add_column :profiles, :name, :string
    add_column :profiles, :twitter, :string
    add_column :profiles, :linkedin, :string
    add_column :profiles, :facebook, :string
    add_column :profiles, :instagram, :string
  end
end
