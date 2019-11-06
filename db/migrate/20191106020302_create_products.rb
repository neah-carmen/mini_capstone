class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.string :currency_code
      t.integer :stock
      t.string :image_url
      t.string :description
      t.boolean :on_sale
      t.integer :discount

      t.timestamps
    end
  end
end
