module Spree
  Product.class_eval do
    belongs_to :sale_unit
  end
end
