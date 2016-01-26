class AddQuoteToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :quote, :text
  end
end
