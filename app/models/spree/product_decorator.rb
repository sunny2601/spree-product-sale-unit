module Spree
  Product.class_eval do
    belongs_to :sale_unit

    def set_sale_unit name
      sale_unit = Spree::SaleUnit.find_by(name: name)
      self.sale_unit_id = sale_unit.id unless sale_unit.nil?
      self.save!
    end
  end
end
