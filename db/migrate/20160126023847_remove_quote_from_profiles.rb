class RemoveQuoteFromProfiles < ActiveRecord::Migration
  def change
    remove_column :profiles, :quote, :string
  end
end
