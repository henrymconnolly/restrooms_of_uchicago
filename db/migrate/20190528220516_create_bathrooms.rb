class CreateBathrooms < ActiveRecord::Migration[5.1]
  def change
    create_table :bathrooms do |t|
      t.string :bathroom_type
      t.boolean :outside_access
      t.string :building
      t.integer :room_number
      t.float :latitude
      t.float :longitude
      t.integer :door_width
      t.string :doorknob_type
      t.boolean :auto_push_button
      t.boolean :double_doors
      t.integer :stall_door_width
      t.string :stall_doorknob_type
      t.boolean :stall_auto_close
      t.boolean :stall_interior_handle
      t.boolean :toilet_space
      t.boolean :grab_bars
      t.boolean :toilet_paper_reach
      t.integer :toilet_paper_height
      t.string :flush_button_type
      t.integer :toilet_seat_height
      t.integer :seat_cover_height
      t.integer :urinal_height
      t.integer :number_accessible_stalls
      t.boolean :roll_under_sink
      t.integer :sink_height
      t.boolean :hot_pipes_wrapped
      t.string :faucet_type
      t.integer :soap_dispenser_height
      t.boolean :hand_dryer
      t.boolean :tampon_pad_dispenser
      t.integer :tp_dispenser_height
      t.integer :mirror_height
      t.boolean :alarm_system
      t.boolean :obstructions
      t.boolean :stall_marked_accessible
      t.boolean :door_marked_accessible
      t.boolean :marked_unisex
      t.boolean :location_isolated
      t.string :next_door_bathrooms
      t.boolean :interior_lock
      t.boolean :dispenser_functional
      t.string :dispenser_cleanliness
      t.boolean :changing_table
      t.integer :changing_table_height

      t.timestamps
    end
  end
end
