ActiveAdmin.register Feedback do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :title, :body, :icon, :name
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :body, :icon, :slug]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  form do |f|
    f.inputs do
      f.input :title
      f.input :name
      f.input :icon, placeholder: "goto feather.com for icons important"
      f.input :body, as: :ckeditor
    end
    f.actions
  end
end
