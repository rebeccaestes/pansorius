class CreateValues < ActiveRecord::Migration
  def change
    create_table :values do |t|
      t.string :value
      t.references :user, index: true, foreign_key: true
      t.references :profile, index: true, foreign_key: true
    end
  end
end
