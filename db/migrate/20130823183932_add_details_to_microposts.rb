class AddDetailsToMicroposts < ActiveRecord::Migration
  def change
  	add_column :microposts, :name, :string
  	add_column :microposts, :info, :text
  end
end
