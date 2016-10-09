ActiveAdmin.register Seat do

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
  permit_params :row, :number, :flight

  form do |f| 
    f.inputs do
      f.input :row
      f.input :number
      f.input :flight, member_label: :code
    end
    f.actions
  end


end
