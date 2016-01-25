class CreateValuetaggings < ActiveRecord::Migration
  def change
    create_table :valuetaggings do |t|
      t.belongs_to :profile, index: true
      t.belongs_to :value, index: true
      t.timestamps null: false
      # t.integer :rank, null: false
    end
  end
end
