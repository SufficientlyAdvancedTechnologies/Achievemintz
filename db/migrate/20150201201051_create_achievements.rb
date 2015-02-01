class CreateAchievements < ActiveRecord::Migration
  def change
    create_table :achievements do |t|
      t.string :name
      t.text :description
      t.integer :status
      t.belongs_to :app, index: true
      t.belongs_to :created_by, index: true
      t.text :meta

      t.timestamps null: false
    end
    add_foreign_key :achievements, :apps
    add_foreign_key :achievements, :created_bies
  end
end
