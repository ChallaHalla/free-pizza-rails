class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.timestamps null: false
      t.string :email 
      t.string :username, null: false
      t.string :reddit_id, null: false
      t.string :access_token, null: false
      t.string :refresh_token, null: false

      t.string :encrypted_password, limit: 128, null: false
      t.string :confirmation_token, limit: 128
      t.string :remember_token, limit: 128, null: false
    end

    add_index :users, :reddit_id
    add_index :users, :remember_token
  end
end
