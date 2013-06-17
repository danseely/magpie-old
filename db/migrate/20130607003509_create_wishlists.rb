class CreateWishlists < ActiveRecord::Migration
  def change
    create_table :wishlists do |t|
      t.string :name
      t.integer :item_count

      t.timestamps
    end
  end

end
