class CreateArtifacts < ActiveRecord::Migration
  def change
    create_table :artifacts do |t|
      t.string :a_type
      t.string :period
      t.string :context
      t.string :county
      t.string :lat
      t.string :lon
      t.text :desc
      t.integer :user_id

      t.timestamps
    end
  end
end
