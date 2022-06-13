class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.integer :year
      t.string :model
      t.string :make
      t.integer :price
      t.references :person, null: false, foreign_key: true

      t.timestamps
    end
  end
end
