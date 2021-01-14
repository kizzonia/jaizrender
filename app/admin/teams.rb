ActiveAdmin.register Team do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :title,  :slug, :body, :name
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :teamimg, :slug, :body, :position, :whatsapp, :ln, :ig]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  form do |f|
    f.inputs do
      f.input :title
      f.input :name
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
