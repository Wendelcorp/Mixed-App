class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs do |t|
      t.string :artist
      t.string :name
      t.string :source

      t.timestamps
    end
  end
end
