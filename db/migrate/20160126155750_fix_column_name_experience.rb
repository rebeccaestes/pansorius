class FixColumnNameExperience < ActiveRecord::Migration
  def change
     rename_column :experiences, :start, :start_date
     rename_column :experiences, :end, :end_date
  end
end
