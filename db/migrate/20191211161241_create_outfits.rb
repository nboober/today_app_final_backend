class CreateOutfits < ActiveRecord::Migration[6.0]
  def change
    create_table :outfits do |t|
      t.integer :user_id

      t.timestamps
    end
  end
end
