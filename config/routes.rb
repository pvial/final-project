Rails.application.routes.draw do
  # Routes for the Sub contenido resource:

  # CREATE
  get("/sub_contenidos/new", { :controller => "sub_contenidos", :action => "new_form" })
  post("/create_sub_contenido", { :controller => "sub_contenidos", :action => "create_row" })

  # READ
  get("/sub_contenidos", { :controller => "sub_contenidos", :action => "index" })
  get("/sub_contenidos/:id_to_display", { :controller => "sub_contenidos", :action => "show" })

  # UPDATE
  get("/sub_contenidos/:prefill_with_id/edit", { :controller => "sub_contenidos", :action => "edit_form" })
  post("/update_sub_contenido/:id_to_modify", { :controller => "sub_contenidos", :action => "update_row" })

  # DELETE
  get("/delete_sub_contenido/:id_to_remove", { :controller => "sub_contenidos", :action => "destroy_row" })

  #------------------------------

  get 'uploads/new'

  get 'uploads/create'

  get 'uploads/index'

  root "ejercicios#land"
  
  devise_for :aprobadors
  devise_for :creadors
  # Routes for the Molde resource:
  
  # para manejo de archivos
  resources :uploads
  #root 'uploads#new'
  
  # CREATE
  get("/moldes/new", { :controller => "moldes", :action => "new_form" })
  post("/create_molde", { :controller => "moldes", :action => "create_row" })

  # READ
  get("/moldes", { :controller => "moldes", :action => "index" })
  get("/moldes/:id_to_display", { :controller => "moldes", :action => "show" })

  # UPDATE
  get("/moldes/:prefill_with_id/edit", { :controller => "moldes", :action => "edit_form" })
  post("/update_molde/:id_to_modify", { :controller => "moldes", :action => "update_row" })

  # DELETE
  get("/delete_molde/:id_to_remove", { :controller => "moldes", :action => "destroy_row" })

  #------------------------------

  # Routes for the Eje resource:

  # CREATE
  get("/ejes/new", { :controller => "ejes", :action => "new_form" })
  post("/create_eje", { :controller => "ejes", :action => "create_row" })

  # READ
  get("/ejes", { :controller => "ejes", :action => "index" })
  get("/ejes/:id_to_display", { :controller => "ejes", :action => "show" })

  # UPDATE
  get("/ejes/:prefill_with_id/edit", { :controller => "ejes", :action => "edit_form" })
  post("/update_eje/:id_to_modify", { :controller => "ejes", :action => "update_row" })

  # DELETE
  get("/delete_eje/:id_to_remove", { :controller => "ejes", :action => "destroy_row" })

  #------------------------------

  # Routes for the Ejercicio resource:

  # CREATE
  get("/ejercicios/new", { :controller => "ejercicios", :action => "new_form" })
  post("/create_ejercicio", { :controller => "ejercicios", :action => "create_row" })
  post("/create_ejercicio_gemelo", { :controller => "ejercicios", :action => "create_row_gemelo" })

  # READ
  get("/ejercicios", { :controller => "ejercicios", :action => "index" })
  get("/ejercicios_aprobados", { :controller => "ejercicios", :action => "index_aprobados" })
  get("/ejercicios_rechazados", { :controller => "ejercicios", :action => "index_rechazados" })
  get("/ejercicios_pendientes", { :controller => "ejercicios", :action => "index_pendientes" })
  get("/ejercicios/visor_apr", { :controller => "ejercicios", :action => "visor_apr" })
  get("/ejercicios/:id_to_display", { :controller => "ejercicios", :action => "show" })

  # UPDATE
  get("/ejercicios/:prefill_with_id/edit", { :controller => "ejercicios", :action => "edit_form" })
  post("/update_ejercicio/:id_to_modify", { :controller => "ejercicios", :action => "update_row" })
  post("/edit_ejercicio/:id_to_modify", { :controller => "ejercicios", :action => "edit_row" })
  post("/edit_ejercicio_gemelo/:id_to_modify", { :controller => "ejercicios", :action => "edit_row_gemelo" })
  get("/aprobar_ejercicio", { :controller => "ejercicios", :action => "aprobar" })
  get("/rechazar_ejercicio", { :controller => "ejercicios", :action => "rechazar" })
  

  # DELETE
  get("/delete_ejercicio/:id_to_remove", { :controller => "ejercicios", :action => "destroy_row" })

  #------------------------------

  # Routes for the Contentido resource:

  # CREATE
  get("/contentidos/new", { :controller => "contentidos", :action => "new_form" })
  post("/create_contentido", { :controller => "contentidos", :action => "create_row" })

  # READ
  get("/contentidos", { :controller => "contentidos", :action => "index" })
  get("/contentidos/porcontenido", { :controller => "contentidos", :action => "index_porcontenido" })
  get("/contentidos/pormolde", { :controller => "contentidos", :action => "index_pormolde" })
  get("/contentidos/pordificultad", { :controller => "contentidos", :action => "index_pordificultad" })
  get("/contentidos/:id_to_display", { :controller => "contentidos", :action => "show" })

  # UPDATE
  get("/contentidos/:prefill_with_id/edit", { :controller => "contentidos", :action => "edit_form" })
  post("/update_contentido/:id_to_modify", { :controller => "contentidos", :action => "update_row" })

  # DELETE
  get("/delete_contentido/:id_to_remove", { :controller => "contentidos", :action => "destroy_row" })

  #------------------------------

  # Routes for the Pre ex resource:

  # CREATE
  get("/pre_exes/new", { :controller => "pre_exes", :action => "new_form" })
  get("/pre_exes/iniciar_gemelo", { :controller => "pre_exes", :action => "iniciar_gemelo" })
  post("/create_pre_ex", { :controller => "pre_exes", :action => "create_row" })
  post("/create_pre_ex_edit", { :controller => "pre_exes", :action => "create_row_edit" })

  # READ
  get("/pre_exes", { :controller => "pre_exes", :action => "index" })
  get("/pre_exes/:id_to_display", { :controller => "pre_exes", :action => "show" })

  # UPDATE
  get("/pre_exes/:prefill_with_id/edit", { :controller => "pre_exes", :action => "edit_form" })
  post("/update_pre_ex/:id_to_modify", { :controller => "pre_exes", :action => "update_row" })

  # DELETE
  get("/delete_pre_ex/:id_to_remove", { :controller => "pre_exes", :action => "destroy_row" })

  #------------------------------

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
