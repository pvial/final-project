class PreExesController < ApplicationController
  def index
    @pre_exes = PreEx.all

    render("pre_ex_templates/index.html.erb")
  end

  def show
    @pre_ex = PreEx.find(params.fetch("id_to_display"))

    render("pre_ex_templates/show.html.erb")
  end

  def new_form
    @draft = nil
    m=Molde.new
    m.save
    @molde = m
    render("pre_ex_templates/new_form.html.erb")
  end
  
  # Inicia generacion de ejercicios desde draft de otro ejercicio
  def iniciar_gemelo
    @draft = PreEx.find(params.fetch("last_pre_ex_id"))
    @molde = Molde.find(params.fetch("molde_id"))
    
    render("pre_ex_templates/new_form.html.erb")
  end
  
  def create_row
    @pre_ex = PreEx.new

    @pre_ex.contenido_id = params.fetch("contenido_id")
    @pre_ex.molde_id = params.fetch("molde_id")
    @pre_ex.enunciado = params.fetch("enunciado")
    
    if params.fetch("subi_imagen") != 0
      @pre_ex.imagen = Upload.last.url
    end 
    
    @pre_ex.resp_correcta = params.fetch("resp_correcta")
    @pre_ex.w1 = params.fetch("w1")
    @pre_ex.w2 = params.fetch("w2")
    @pre_ex.w3 = params.fetch("w3")
    @pre_ex.w4 = params.fetch("w4")
    @pre_ex.op1 = params.fetch("op1")
    @pre_ex.op2 = params.fetch("op2")
    @pre_ex.op3 = params.fetch("op3")
    @pre_ex.op4 = params.fetch("op4")
    @pre_ex.op5 = params.fetch("op5")
    @pre_ex.hint = params.fetch("hint")
    @pre_ex.dificultad = params.fetch("dificultad")
    @pre_ex.habilidad = params.fetch("habilidad")
    @pre_ex.solucion = params.fetch("solucion")
    
    @molde = Molde.find(params.fetch("molde_id"))
    
    if @pre_ex.valid?
      @pre_ex.save
      @draft = @pre_ex
      
      render("pre_ex_templates/new_form.html.erb")
    else
      render("pre_ex_templates/new_form.html.erb")
    end
  end
  
  def create_row_edit
    @pre_ex = PreEx.new

    @pre_ex.contenido_id = params.fetch("contenido_id")
    @pre_ex.molde_id = params.fetch("molde_id")
    @pre_ex.enunciado = params.fetch("enunciado")
    
    if params.fetch("subi_imagen") != 0
      @pre_ex.imagen = Upload.last.url
    end
    
    @pre_ex.resp_correcta = params.fetch("resp_correcta")
    @pre_ex.w1 = params.fetch("w1")
    @pre_ex.w2 = params.fetch("w2")
    @pre_ex.w3 = params.fetch("w3")
    @pre_ex.w4 = params.fetch("w4")
    @pre_ex.op1 = params.fetch("op1")
    @pre_ex.op2 = params.fetch("op2")
    @pre_ex.op3 = params.fetch("op3")
    @pre_ex.op4 = params.fetch("op4")
    @pre_ex.op5 = params.fetch("op5")
    @pre_ex.hint = params.fetch("hint")
    @pre_ex.dificultad = params.fetch("dificultad")
    @pre_ex.habilidad = params.fetch("habilidad")
    @pre_ex.solucion = params.fetch("solucion")
    
    @molde = Molde.find(params.fetch("molde_id"))
    @ejercicio =  Ejercicio.find(params.fetch("ejercicio_id"))
    
    if @pre_ex.valid?
      @pre_ex.save
      @draft = @pre_ex
      
      render("ejercicio_templates/edit_form.html.erb")
    else
      render("ejercicio_templates/edit_form.html.erb")
    end
  end

  def edit_form
    @pre_ex = PreEx.find(params.fetch("prefill_with_id"))

    render("pre_ex_templates/edit_form.html.erb")
  end

  def update_row
    @pre_ex = PreEx.find(params.fetch("id_to_modify"))

    @pre_ex.contenido_id = params.fetch("contenido_id")
    @pre_ex.molde_id = params.fetch("molde_id")
    @pre_ex.enunciado = params.fetch("enunciado")
    
    if params.fetch("subi_imagen") != 0
      @pre_ex.imagen = Upload.last.url
    end
    
    @pre_ex.resp_correcta = params.fetch("resp_correcta")
    @pre_ex.w1 = params.fetch("w1")
    @pre_ex.w2 = params.fetch("w2")
    @pre_ex.w3 = params.fetch("w3")
    @pre_ex.w4 = params.fetch("w4")
    @pre_ex.op1 = params.fetch("op1")
    @pre_ex.op2 = params.fetch("op2")
    @pre_ex.op3 = params.fetch("op3")
    @pre_ex.op4 = params.fetch("op4")
    @pre_ex.op5 = params.fetch("op5")
    @pre_ex.hint = params.fetch("hint")
    @pre_ex.dificultad = params.fetch("dificultad")
    @pre_ex.habilidad = params.fetch("habilidad")
    @pre_ex.solucion = params.fetch("solucion")

    if @pre_ex.valid?
      @pre_ex.save

      redirect_to("/pre_exes/#{@pre_ex.id}", :notice => "Pre ex updated successfully.")
    else
      render("pre_ex_templates/edit_form.html.erb")
    end
  end

  def destroy_row
    @pre_ex = PreEx.find(params.fetch("id_to_remove"))

    @pre_ex.destroy

    redirect_to("/pre_exes", :notice => "Pre ex deleted successfully.")
  end
end
