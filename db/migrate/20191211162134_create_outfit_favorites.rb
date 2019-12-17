class CreateOutfitFavorites < ActiveRecord::Migration[6.0]
  def change
    create_table :outfit_favorites do |t|
      t.integer :user_id
      t.integer :outfit_id

      t.timestamps
    end
  end
end
