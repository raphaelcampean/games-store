class CreateGames < ActiveRecord::Migration[7.1]
  def change
    create_table :games do |t|
      t.string :title
      t.decimal :price
      t.integer :year
      t.text :description

      t.timestamps
    end
  end
end
