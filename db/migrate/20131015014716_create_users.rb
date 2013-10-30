class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :uid
      t.string :first_name
      t.string :last_name
      t.string :user_name
      t.string :addr1
      t.string :addr2
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :phone
      t.boolean :conntacted

      t.timestamps
    end
  end
end
