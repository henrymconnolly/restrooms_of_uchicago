class BathroomsController < ApplicationController
  def index
    @bathrooms = Bathroom.all

    render("bathroom_templates/index.html.erb")
  end

  def show
    @bathroom = Bathroom.find(params.fetch("id_to_display"))

    render("bathroom_templates/show.html.erb")
  end

  def new_form
    @bathroom = Bathroom.new

    render("bathroom_templates/new_form.html.erb")
  end

  def create_row
    @bathroom = Bathroom.new

    @bathroom.bathroom_type = params.fetch("bathroom_type")
    @bathroom.outside_access = params.fetch("outside_access")
    @bathroom.building = params.fetch("building")
    @bathroom.room_number = params.fetch("room_number")
    @bathroom.latitude = params.fetch("latitude")
    @bathroom.longitude = params.fetch("longitude")
    @bathroom.door_width = params.fetch("door_width")
    @bathroom.doorknob_type = params.fetch("doorknob_type")
    @bathroom.auto_push_button = params.fetch("auto_push_button")
    @bathroom.double_doors = params.fetch("double_doors")
    @bathroom.stall_door_width = params.fetch("stall_door_width")
    @bathroom.stall_doorknob_type = params.fetch("stall_doorknob_type")
    @bathroom.stall_auto_close = params.fetch("stall_auto_close")
    @bathroom.stall_interior_handle = params.fetch("stall_interior_handle")
    @bathroom.toilet_space = params.fetch("toilet_space")
    @bathroom.grab_bars = params.fetch("grab_bars")
    @bathroom.toilet_paper_reach = params.fetch("toilet_paper_reach")
    @bathroom.toilet_paper_height = params.fetch("toilet_paper_height")
    @bathroom.flush_button_type = params.fetch("flush_button_type")
    @bathroom.toilet_seat_height = params.fetch("toilet_seat_height")
    @bathroom.seat_cover_height = params.fetch("seat_cover_height")
    @bathroom.urinal_height = params.fetch("urinal_height")
    @bathroom.number_accessible_stalls = params.fetch("number_accessible_stalls")
    @bathroom.roll_under_sink = params.fetch("roll_under_sink")
    @bathroom.sink_height = params.fetch("sink_height")
    @bathroom.hot_pipes_wrapped = params.fetch("hot_pipes_wrapped")
    @bathroom.faucet_type = params.fetch("faucet_type")
    @bathroom.soap_dispenser_height = params.fetch("soap_dispenser_height")
    @bathroom.hand_dryer = params.fetch("hand_dryer")
    @bathroom.tampon_pad_dispenser = params.fetch("tampon_pad_dispenser")
    @bathroom.tp_dispenser_height = params.fetch("tp_dispenser_height")
    @bathroom.mirror_height = params.fetch("mirror_height")
    @bathroom.alarm_system = params.fetch("alarm_system")
    @bathroom.obstructions = params.fetch("obstructions")
    @bathroom.stall_marked_accessible = params.fetch("stall_marked_accessible")
    @bathroom.door_marked_accessible = params.fetch("door_marked_accessible")
    @bathroom.marked_unisex = params.fetch("marked_unisex")
    @bathroom.location_isolated = params.fetch("location_isolated")
    @bathroom.next_door_bathrooms = params.fetch("next_door_bathrooms")
    @bathroom.interior_lock = params.fetch("interior_lock")
    @bathroom.dispenser_functional = params.fetch("dispenser_functional")
    @bathroom.dispenser_cleanliness = params.fetch("dispenser_cleanliness")
    @bathroom.changing_table = params.fetch("changing_table")
    @bathroom.changing_table_height = params.fetch("changing_table_height")

    if @bathroom.valid?
      @bathroom.save

      redirect_back(:fallback_location => "/bathrooms", :notice => "Bathroom created successfully.")
    else
      render("bathroom_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @bathroom = Bathroom.find(params.fetch("prefill_with_id"))

    render("bathroom_templates/edit_form.html.erb")
  end

  def update_row
    @bathroom = Bathroom.find(params.fetch("id_to_modify"))

    @bathroom.bathroom_type = params.fetch("bathroom_type")
    @bathroom.outside_access = params.fetch("outside_access")
    @bathroom.building = params.fetch("building")
    @bathroom.room_number = params.fetch("room_number")
    @bathroom.latitude = params.fetch("latitude")
    @bathroom.longitude = params.fetch("longitude")
    @bathroom.door_width = params.fetch("door_width")
    @bathroom.doorknob_type = params.fetch("doorknob_type")
    @bathroom.auto_push_button = params.fetch("auto_push_button")
    @bathroom.double_doors = params.fetch("double_doors")
    @bathroom.stall_door_width = params.fetch("stall_door_width")
    @bathroom.stall_doorknob_type = params.fetch("stall_doorknob_type")
    @bathroom.stall_auto_close = params.fetch("stall_auto_close")
    @bathroom.stall_interior_handle = params.fetch("stall_interior_handle")
    @bathroom.toilet_space = params.fetch("toilet_space")
    @bathroom.grab_bars = params.fetch("grab_bars")
    @bathroom.toilet_paper_reach = params.fetch("toilet_paper_reach")
    @bathroom.toilet_paper_height = params.fetch("toilet_paper_height")
    @bathroom.flush_button_type = params.fetch("flush_button_type")
    @bathroom.toilet_seat_height = params.fetch("toilet_seat_height")
    @bathroom.seat_cover_height = params.fetch("seat_cover_height")
    @bathroom.urinal_height = params.fetch("urinal_height")
    @bathroom.number_accessible_stalls = params.fetch("number_accessible_stalls")
    @bathroom.roll_under_sink = params.fetch("roll_under_sink")
    @bathroom.sink_height = params.fetch("sink_height")
    @bathroom.hot_pipes_wrapped = params.fetch("hot_pipes_wrapped")
    @bathroom.faucet_type = params.fetch("faucet_type")
    @bathroom.soap_dispenser_height = params.fetch("soap_dispenser_height")
    @bathroom.hand_dryer = params.fetch("hand_dryer")
    @bathroom.tampon_pad_dispenser = params.fetch("tampon_pad_dispenser")
    @bathroom.tp_dispenser_height = params.fetch("tp_dispenser_height")
    @bathroom.mirror_height = params.fetch("mirror_height")
    @bathroom.alarm_system = params.fetch("alarm_system")
    @bathroom.obstructions = params.fetch("obstructions")
    @bathroom.stall_marked_accessible = params.fetch("stall_marked_accessible")
    @bathroom.door_marked_accessible = params.fetch("door_marked_accessible")
    @bathroom.marked_unisex = params.fetch("marked_unisex")
    @bathroom.location_isolated = params.fetch("location_isolated")
    @bathroom.next_door_bathrooms = params.fetch("next_door_bathrooms")
    @bathroom.interior_lock = params.fetch("interior_lock")
    @bathroom.dispenser_functional = params.fetch("dispenser_functional")
    @bathroom.dispenser_cleanliness = params.fetch("dispenser_cleanliness")
    @bathroom.changing_table = params.fetch("changing_table")
    @bathroom.changing_table_height = params.fetch("changing_table_height")

    if @bathroom.valid?
      @bathroom.save

      redirect_to("/bathrooms/#{@bathroom.id}", :notice => "Bathroom updated successfully.")
    else
      render("bathroom_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @bathroom = Bathroom.find(params.fetch("id_to_remove"))

    @bathroom.destroy

    redirect_to("/bathrooms", :notice => "Bathroom deleted successfully.")
  end
end
