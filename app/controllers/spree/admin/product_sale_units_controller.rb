module Spree
  module Admin
    class ProductSaleUnitsController < ResourceController

      before_action :load_product, only: [:index, :edit]
      before_action :load_sale_units, only: [:index, :edit]

      private

      def load_product
        @product = Spree::Product.friendly.find(params[:product_id])
        @product_sale_unit_ids = @product.sale_units.map(&:id)
      end

      def load_sale_units
        @order_info_items = Spree::SaleUnit.all
      end
    end
  end
end
