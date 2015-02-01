class CreateAchievementsBadges < ActiveRecord::Migration
  def change
    create_table :achievements_badges do |t|
      t.belongs_to :achievements_unlock, index: true
      t.belongs_to :player, index: true
      t.float :multiplier, default: 0.0
      t.integer :status, default: 1
      t.text :meta

      t.timestamps null: false
    end
    add_foreign_key :achievements_badges, :achievements_unlocks
    add_foreign_key :achievements_badges, :players
  end
end
