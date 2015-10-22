class CreateSaleUnitsSpreeProductsJoinTable < ActiveRecord::Migration
  def up
    create_join_table :sale_units, :spree_products do |t|
      t.index :sale_unit_id
    end

    rename_column :sale_units_spree_products, :spree_product_id, :product_id
    add_index :sale_units_spree_products, :product_id
  end

  def down
    drop_table :sale_units_spree_products
  end
end
