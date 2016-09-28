Deface::Override.new(
    :original => 'd15e8881a009c5e287070eb034df4c7a81b52758',
    :virtual_path => 'spree/admin/products/_form',
    :name => 'add_sale_unit_selector_to_product_details_form',
    :insert_bottom => '[data-hook="admin_product_form_left"]',
    :text => '<div data-hook="admin_product_form_sale_unit">
        <%= f.field_container :sale_unit, class: [\'form-group\'] do %>
          <%= f.label :sale_unit, Spree.t(:sale_unit) %>
          <%= f.collection_select(:sale_unit_id, Spree::SaleUnit.all, :id, :name,
            {include_blank: Spree.t(\'match_choices.none\')},
            {class: \'select2\', disabled: (cannot? :edit, Spree::SaleUnit)})
          %>
          <%= f.error_message_on :sale_unit %>
        <% end %>
      </div>'
)

