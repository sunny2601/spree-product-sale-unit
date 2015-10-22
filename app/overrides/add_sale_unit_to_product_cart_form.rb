Deface::Override.new(
    :virtual_path => 'spree/products/_cart_form',
    :name => 'add_sale_unit_to_product_cart_form',
    :replace => 'span.quantity-info',
    :partial => 'spree/admin/sale_units/quantity_info'
)
