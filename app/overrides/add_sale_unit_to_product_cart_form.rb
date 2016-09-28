Deface::Override.new(
    :original => '72630eb474f87b8212f7faf8901c7b95fcff45e2',
    :virtual_path => 'spree/products/_cart_form',
    :name => 'add_sale_unit_to_product_cart_form',
    :replace => 'span.quantity-info',
    :partial => 'spree/admin/sale_units/quantity_info'
)
