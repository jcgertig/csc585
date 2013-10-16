class EditUsers < ActiveRecord::Migration
  def up
  	remove_column :users, :conntacted
  	add_column :users, :contacted, :boolean
  end

  def down
  	remove_column :users, :contacted
  	add_column :users, :conntacted, :boolean
  end
end
