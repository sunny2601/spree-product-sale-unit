module Spree
  class SaleUnit < ActiveRecord::Base
    self.table_name = 'sale_units'
    has_many :products
  end
end
