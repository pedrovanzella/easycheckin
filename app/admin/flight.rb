ActiveAdmin.register Flight do

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
  permit_params :code, :schedule, :origin_id, :destionation_id

  form do |f| 
    f.inputs do
      f.input :code
      f.input :schedule, as: :text, input_html: { class: 'jsoneditor-target' }
      f.input :origin, member_label: :code
      f.input :destination, member_label: :code
    end
    f.actions
  end

end
