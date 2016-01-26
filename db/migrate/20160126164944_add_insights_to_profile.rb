class AddInsightsToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :insights, :text
  end
end
