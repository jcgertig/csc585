class Removeuidfromuser < ActiveRecord::Migration
  def up
  	remove_column :users, :uid
  	add_column :users, :uid, :string
  end

  def down
  	remove_column :users, :uid
  	add_column :users, :uid, :integer
  end
end
