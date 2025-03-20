class AddGenreToGames < ActiveRecord::Migration[7.1]
  def change
    add_reference :games, :genre, null: false, foreign_key: true
  end
end
