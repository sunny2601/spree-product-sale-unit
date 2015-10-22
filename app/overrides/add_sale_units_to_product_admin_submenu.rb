Deface::Override.new(
    :virtual_path => 'spree/admin/shared/sub_menu/_product',
    :name => 'add_sale_units_to_product_admin_submenu',
    :insert_bottom => '[data-hook="admin_product_sub_tabs"]',
    :text => '<%= tab :label => Spree.t(:sale_units), :route => :admin_sale_units %>'
)
