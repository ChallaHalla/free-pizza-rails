class CreatePizzaRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :pizza_requests do |t|

      t.string :post_id
      t.string :owner_reddit_id

      t.string :title
      t.string :description

      t.integer :fulfilled_by
      t.integer :address

      t.timestamps
    end
  end
end
