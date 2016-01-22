class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :quote
      t.references :user, index: true, foreign_key: true
    end
  end
end
