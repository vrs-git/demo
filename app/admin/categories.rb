ActiveAdmin.register Category do
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

  scope :out_of_order

  index do
    selectable_column

    column :id , sortable: :id do |category|
      link_to category.id , admin_category_path(category)
    end
    column :category_name
    column :cat_status
    column :created_at
    column :updated_at
    column :cat_photo
    column :cat_photo_file_name
    column :cat_photo_updated_at

    actions

  end


#   controller do
#     def permitted_params
#       params.permit project: [:cat_photo]
#     end
#
#     end
#
#   form do |f|
#     f.inputs "Add New Category" do
#
#       f.input :photo, :required => false, :as => :file, :hint => f.template.image_tag(f.object.cat_photo.url(:medium))
#
#
#       # Will preview the image when the object is edited
#     end
#     f.actions
#   end
#
#
#   show do |ad|
#     attributes_table do
#
#       row :cat_photo do
#         image_tag(ad.cat_photo.url(:thumb))
#       end
#       # Will display the image on show object page
#     end
#   end
#
end