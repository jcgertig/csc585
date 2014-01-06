class CreateArtifacts < ActiveRecord::Migration
  def change
    create_table :artifacts do |t|
      t.string :artifact_type
      t.string :period
      t.string :context
      t.string :county
      t.string :latitude
      t.string :longitude
      t.text :description
      t.integer :user_id
      t.string :token
      t.integer :cover

      t.timestamps
    end
  end
end
