class AddMixToSongs < ActiveRecord::Migration[5.1]
  def change
    add_reference :songs, :mix, foreign_key: true
  end
end
