class CreateWishlists < ActiveRecord::Migration
  def up
    create_table :wishlists do |t|
      t.string :name
      t.integer :item_count

      t.timestamps
    end
  end

  def down
      drop_table :wishlists
  end
end
