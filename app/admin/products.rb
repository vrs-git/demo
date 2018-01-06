ActiveAdmin.register Product do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
#
  permit_params :product_name, :MRP,
                :SP, :discount, :active, :instock, :warranty_summary,
                :highlights, :imp_note, :owner_id, :category_id, :seller_name,
                :full_desp, :specification, :installation, :unit_in_order,
                :unit_in_stock, :unit_length, :unit_bredth, :unit_height,
                :unit_weight, :additional_features, :image_1,:image_2,:image_3,
                :image_4, :image_5

  scope :inactive
  scope :out_of_stock

  batch_action :destroy do |ids|
    redirect_to collection_path, alert: "Didn't really delete these!"
  end

  index do
    selectable_column

    column :id, sortable: :id do |product|
      link_to product.id , admin_product_path(product)
    end
    column :product_name
    column :MRP
    column :SP
    column :discount
    column :active
    column :instock
    column :owner_id
    column :category_id do |category|

      link_to category.category_id , admin_category_path(category)
      end


    column :unit_in_stock

    column :unit_in_order
    column :unit_length
    column :unit_bredth
    column :unit_height
    column :unit_weight
    column :created_at
    column :updated_at
    actions
  end

end
