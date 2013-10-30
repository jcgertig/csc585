class CreateArtifacts < ActiveRecord::Migration
  def change
    create_table :artifacts do |t|
      t.integer :uid
      t.string :type
      t.string :period
      t.string :context
      t.string :county
      t.string :lat
      t.string :lon
      t.text :desc
      t.integer :userid

      t.timestamps
    end
  end
end
