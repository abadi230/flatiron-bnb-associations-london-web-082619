class CreateCities < ActiveRecord::Migration[5.0]
  def change
    create_table :cities do |t|
      t.string :name
      t.string :listing_id
      t.integer :Neighborhood_id

      t.timestamps
    end
  end
end
