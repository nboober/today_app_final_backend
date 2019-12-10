class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :avatar, :default => 'https://www.cvent-assets.com/csn-search-app-ui/assets/images/venue-card-placeholder__18v-Z.png'
      t.string :firstname
      t.string :lastname

      t.timestamps
    end
  end
end
