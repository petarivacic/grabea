class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
    	t.string :company
    	t.string :position
    	t.integer :user_id

      t.timestamps
    end
  end
end
