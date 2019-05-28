Rails.application.routes.draw do
  # Routes for the Bathroom resource:

  # CREATE
  get("/bathrooms/new", { :controller => "bathrooms", :action => "new_form" })
  post("/create_bathroom", { :controller => "bathrooms", :action => "create_row" })

  # READ
  get("/bathrooms", { :controller => "bathrooms", :action => "index" })
  get("/bathrooms/:id_to_display", { :controller => "bathrooms", :action => "show" })

  # UPDATE
  get("/bathrooms/:prefill_with_id/edit", { :controller => "bathrooms", :action => "edit_form" })
  post("/update_bathroom/:id_to_modify", { :controller => "bathrooms", :action => "update_row" })

  # DELETE
  get("/delete_bathroom/:id_to_remove", { :controller => "bathrooms", :action => "destroy_row" })

  #------------------------------

  devise_for :users
  # Routes for the User resource:

  # READ
  get("/users", { :controller => "users", :action => "index" })
  get("/users/:id_to_display", { :controller => "users", :action => "show" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
