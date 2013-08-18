class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
    	t.string :university_name
    	t.integer :graduation_date
    	t.boolean :graduated
    	t.integer :user_id

      t.timestamps
    end
  end
end
