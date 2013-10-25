class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :que
      t.text :answ

      t.timestamps
    end
  end
end
