class CreatePizzaPromises < ActiveRecord::Migration[6.0]
  def change
    create_table :pizza_promises do |t|
      t.string :post_id
      t.integer :fulfilled_by

      t.timestamps
    end
  end
end
