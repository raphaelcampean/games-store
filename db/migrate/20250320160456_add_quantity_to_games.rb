class AddQuantityToGames < ActiveRecord::Migration[7.1]
  def change
    add_column :games, :quantity, :integer
  end
end
