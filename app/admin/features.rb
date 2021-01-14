ActiveAdmin.register Feature do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :fimg, :title, :sub_title, :body, :slug, :icon
  #
  # or
  #
  # permit_params do
  #   permitted = [:fimg, :title, :sub_title, :body, :slug]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  form do |f|
    f.inputs do
      f.input :title
      f.input :icon
      f.input :fimg, as: :file
      f.input :sub_title, placeholder: "description"
      f.input :body,  as: :ckeditor
    end
    f.actions
  end

  controller do
         def find_resource
           scoped_collection.friendly.find(params[:id])
         end
       end
end
