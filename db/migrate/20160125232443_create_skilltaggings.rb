class CreateSkilltaggings < ActiveRecord::Migration
  def change
    create_table :skilltaggings do |t|
      t.belongs_to :profile, index: true
      t.belongs_to :skill, index: true
      t.timestamps null: false
    end
  end
end
