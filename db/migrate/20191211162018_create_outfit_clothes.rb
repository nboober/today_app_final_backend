class CreateOutfitClothes < ActiveRecord::Migration[6.0]
  def change
    create_table :outfit_clothes do |t|
      t.integer :outfit_id
      t.integer :clothe_id

      t.timestamps
    end
  end
end
