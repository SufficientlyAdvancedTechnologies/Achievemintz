class CreateAchievementsUnlocks < ActiveRecord::Migration
  def change
    create_table :achievements_unlocks do |t|
      t.belongs_to :achievement, index: true
      t.belongs_to :player, index: true
      t.integer :progression, default: 0
      t.integer :status, default: 1
      t.text :meta

      t.timestamps null: false
    end
    add_foreign_key :achievements_unlocks, :achievements
    add_foreign_key :achievements_unlocks, :players
  end
end
