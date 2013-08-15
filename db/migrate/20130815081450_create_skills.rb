class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :type
      t.integer :score
      t.integer :user_id

      t.timestamps
    end
    add_index :skills, [:user_id, :score]
  end
end
