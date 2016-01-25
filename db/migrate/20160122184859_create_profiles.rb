class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :quote
      t.timestamps null: false
      t.references :user, index: true, foreign_key: true
    end
  end
end
