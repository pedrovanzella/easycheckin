ActiveAdmin.register Ticket do

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
  permit_params :user_id, :flight_id, :seat_id, :checked_in

  form do |f| 
    f.inputs do
      f.input :user, member_label: :email
      f.input :flight, member_label: :code
      f.input :seat, member_label: :number
      f.input :checked_in
    end
    f.actions
  end


end
