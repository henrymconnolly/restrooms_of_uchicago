ActiveAdmin.register Bathroom do

 permit_params :bathroom_type, :outside_access, :building, :room_number, :latitude, :longitude, :door_width, :doorknob_type, :auto_push_button, :double_doors, :stall_door_width, :stall_doorknob_type, :stall_auto_close, :stall_interior_handle, :toilet_space, :grab_bars, :toilet_paper_reach, :toilet_paper_height, :flush_button_type, :toilet_seat_height, :seat_cover_height, :urinal_height, :number_accessible_stalls, :roll_under_sink, :sink_height, :hot_pipes_wrapped, :faucet_type, :soap_dispenser_height, :hand_dryer, :tampon_pad_dispenser, :tp_dispenser_height, :mirror_height, :alarm_system, :obstructions, :stall_marked_accessible, :door_marked_accessible, :marked_unisex, :location_isolated, :next_door_bathrooms, :interior_lock, :dispenser_functional, :dispenser_cleanliness, :changing_table, :changing_table_height
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

end
