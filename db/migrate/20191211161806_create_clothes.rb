class CreateClothes < ActiveRecord::Migration[6.0]
  def change
    create_table :clothes do |t|
      t.string :name
      t.string :location
      t.string :weather_category
      t.string :clothes_type
      t.integer :user_id

      t.timestamps
    end
  end
end
