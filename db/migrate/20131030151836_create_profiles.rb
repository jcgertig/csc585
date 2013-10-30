class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :user_name
      t.string :addr_line1
      t.string :addr_line2
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :phone
      t.boolean :contact
      t.integer :user_id

      t.timestamps
    end
  end
end
