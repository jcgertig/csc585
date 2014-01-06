class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :file
      t.integer :artifact_id
      t.integer :user_id
      t.string :description
      t.string :artifact_token

      t.timestamps
    end
  end
end
