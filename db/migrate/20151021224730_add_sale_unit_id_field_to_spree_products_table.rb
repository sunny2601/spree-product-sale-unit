class AddSaleUnitIdFieldToSpreeProductsTable < ActiveRecord::Migration
  def change
    add_reference :spree_products, :sale_unit, index: true, foreign_key: true
  end
end
