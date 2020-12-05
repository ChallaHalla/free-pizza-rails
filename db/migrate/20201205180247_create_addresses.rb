class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :address_line_1
      t.string :address_line_2
      t.string :address_line_3
      t.string :city
      t.string :postal_code
      t.string :state
      t.string :country

      t.integer :user_id, null: false

      t.timestamps
    end
  end
end
