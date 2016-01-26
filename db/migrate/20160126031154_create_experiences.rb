class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.string :role
      t.string :company
      t.string :start
      t.string :end
      t.text :description
      t.references :profile, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
