class PopulateSaleUnitsTable < ActiveRecord::Migration
  def up
    reset_tables

    sale_units = [
        {:name => 'Roll', :description => 'Please refer to the product details below for specific roll dimensions.'},
        {:name => 'Single roll', :description => 'This item is priced by the single roll and comes packaged as one double roll. Please refer to the product details below for specific dimensions.'},
        {:name => 'Double Roll', :description => 'Please refer to the product details below for the double roll dimensions.'},
        {:name => 'Triple Roll', :description => 'Please refer to the product details below for the triple roll dimensions.'},
        {:name => 'Spool', :description => 'One spool measures 5 yards in length. Please refer to the product details below for the height of the spool.'},
        {:name => 'Set', :description => 'Please refer to the product details below for specific measurements and quantity per set.'},
        {:name => 'Sheet', :description => 'This product is sold in individual sheets. Please refer to the product details below for specific measurements.'},
        {:name => 'Yard', :description => 'This product is sold by the yard. Please refer to the product details below for the product width and maximum bolt size.'},
        {:name => 'Square Foot', :description => 'This product is priced by the square foot. This item comes untrimmed on 54" wide material. Please refer to the product details below for the printed width and repeat size.'}
    ]

    sale_units.each do |item|
      Spree::SaleUnit.create!(item)
    end
  end

  def down
    reset_tables
  end

  def reset_tables
    remove_foreign_key :spree_products, :sale_units
    ActiveRecord::Base.connection.execute('UPDATE spree_products SET sale_unit_id = NULL')
    ActiveRecord::Base.connection.execute('TRUNCATE TABLE sale_units')
    ActiveRecord::Base.connection.execute('ALTER SEQUENCE sale_units_id_seq RESTART WITH 1')
    add_foreign_key :spree_products, :sale_units
  end
end
