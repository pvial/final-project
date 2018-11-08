class EjerciciosController < ApplicationController
  def land
    @ejercicios = Ejercicio.all

    render("ejercicio_templates/land.html.erb")
  end
  
  def aprobar
    ejercicio = Ejercicio.find(params.fetch("excercise_id"))
    ejercicio.aprobado = true
    ejercicio.aprobador_id = current_aprobador.id
    ejercicio.save
    
    redirect_to("/ejercicios/visor_apr", :notice => "Ejercicio aprobado. Pasamos al siguiente.")
  end
  
  def rechazar
    ejercicio = Ejercicio.find(params.fetch("excercise_id"))
    ejercicio.bandera = true
    ejercicio.aprobador_id = current_aprobador.id
    ejercicio.comentario = params.fetch("comentario")
    ejercicio.save
    
    redirect_to("/ejercicios/visor_apr", :notice => "Ejercicio enviado a revisión (rechazado).")
  end
  
  def index
    @ejercicios = Ejercicio.all

    render("ejercicio_templates/index.html.erb")
  end
  
  def index_aprobados
    @ejercicios = Ejercicio.all.where(:aprobado => true)

    render("ejercicio_templates/index_aprobados.html.erb")
  end
  
  def index_rechazados
    @ejercicios = Ejercicio.all.where(:aprobado => false).where(:bandera => true)

    render("ejercicio_templates/index_rechazados.html.erb")
  end
  
  def index_pendientes
    @ejercicios = Ejercicio.all.where(:aprobado => false).where(:bandera => false)

    render("ejercicio_templates/index_pendientes.html.erb")
  end
  
  def visor_apr
    @ejercicios = Ejercicio.all.where(:aprobado => false).where(:bandera => false)
    @ej = @ejercicios.first

    render("ejercicio_templates/visor_aprobador.html.erb")
  end

  def show
    @ej = Ejercicio.find(params.fetch("id_to_display"))

    render("ejercicio_templates/show.html.erb")
  end

  def new_form
    render("ejercicio_templates/new_form.html.erb")
  end

  def create_row
    @ejercicio = Ejercicio.new

    @ejercicio.aprobado = false
    @ejercicio.contenido_id = params.fetch("contenido_id")
    @ejercicio.bandera = false
    @ejercicio.molde_id = params.fetch("molde_id")
    @ejercicio.enunciado = params.fetch("enunciado")
    @ejercicio.imagen = nil
    @ejercicio.resp_correcta = params.fetch("resp_correcta")
    @ejercicio.w1 = params.fetch("w1")
    @ejercicio.w2 = params.fetch("w2")
    @ejercicio.w3 = params.fetch("w3")
    @ejercicio.w4 = params.fetch("w4")
    @ejercicio.op1 = params.fetch("op1")
    @ejercicio.op2 = params.fetch("op2")
    @ejercicio.op3 = params.fetch("op3")
    @ejercicio.op4 = params.fetch("op4")
    @ejercicio.op5 = params.fetch("op5")
    @ejercicio.hint = params.fetch("hint")
    @ejercicio.dificultad = params.fetch("dificultad")
    @ejercicio.habilidad = params.fetch("habilidad")
    @ejercicio.last_pre_ex_id = params.fetch("last_pre_ex_id")
    @ejercicio.creador_id = current_creador.id
    @ejercicio.solucion = params.fetch("solucion")
    @ejercicio.imagen = params.fetch("imagen")

    if @ejercicio.valid?
      @ejercicio.save

      redirect_to("/", :notice => "Ejercicio created successfully.")
    else
      render("ejercicio_templates/new_form.html.erb")
    end
  end
  
  # To create a gemelo (mismo molde)
  def create_row_gemelo
    @ejercicio = Ejercicio.new

    @ejercicio.aprobado = false
    @ejercicio.contenido_id = params.fetch("contenido_id")
    @ejercicio.bandera = false
    @ejercicio.molde_id = params.fetch("molde_id")
    @ejercicio.enunciado = params.fetch("enunciado")
    @ejercicio.imagen = nil
    @ejercicio.resp_correcta = params.fetch("resp_correcta")
    @ejercicio.w1 = params.fetch("w1")
    @ejercicio.w2 = params.fetch("w2")
    @ejercicio.w3 = params.fetch("w3")
    @ejercicio.w4 = params.fetch("w4")
    @ejercicio.op1 = params.fetch("op1")
    @ejercicio.op2 = params.fetch("op2")
    @ejercicio.op3 = params.fetch("op3")
    @ejercicio.op4 = params.fetch("op4")
    @ejercicio.op5 = params.fetch("op5")
    @ejercicio.hint = params.fetch("hint")
    @ejercicio.dificultad = params.fetch("dificultad")
    @ejercicio.habilidad = params.fetch("habilidad")
    @ejercicio.last_pre_ex_id = params.fetch("last_pre_ex_id")
    @ejercicio.creador_id = current_creador.id
    @ejercicio.solucion = params.fetch("solucion")
    @ejercicio.imagen = params.fetch("imagen")
    
    @draft = PreEx.find(params.fetch("last_pre_ex_id"))
    @molde = Molde.find(params.fetch("molde_id"))

    if @ejercicio.valid?
      @ejercicio.save

      render("pre_ex_templates/new_form.html.erb", :notice => "Ejercicio created successfully.")
    else
      render("ejercicio_templates/new_form.html.erb")
    end
  end

  def edit_form
    @ejercicio = Ejercicio.find(params.fetch("prefill_with_id"))
    @draft = PreEx.find(@ejercicio.last_pre_ex_id)
    @molde = Molde.find(@ejercicio.molde_id)

    render("ejercicio_templates/edit_form.html.erb")
  end

  def update_row
    @ejercicio = Ejercicio.find(params.fetch("id_to_modify"))

    @ejercicio.aprobado = params.fetch("aprobado")
    @ejercicio.bandera = params.fetch("bandera")
    @ejercicio.comentario = params.fetch("comentario")
    
    if current_aprobador != nil   
      @ejercicio.aprobador_id = current_aprobador.id
    end

    if @ejercicio.valid?
      @ejercicio.save

      redirect_to("/ejercicios/#{@ejercicio.id}", :notice => "Ejercicio updated successfully.")
    else
      render("ejercicio_templates/land.html.erb")
    end
  end
  
  def edit_row
    @ejercicio = Ejercicio.find(params.fetch("id_to_modify"))

    @ejercicio.aprobado = false
    @ejercicio.contenido_id = params.fetch("contenido_id")
    @ejercicio.bandera = false
    @ejercicio.molde_id = params.fetch("molde_id")
    @ejercicio.enunciado = params.fetch("enunciado")
    @ejercicio.imagen = nil
    @ejercicio.resp_correcta = params.fetch("resp_correcta")
    @ejercicio.w1 = params.fetch("w1")
    @ejercicio.w2 = params.fetch("w2")
    @ejercicio.w3 = params.fetch("w3")
    @ejercicio.w4 = params.fetch("w4")
    @ejercicio.op1 = params.fetch("op1")
    @ejercicio.op2 = params.fetch("op2")
    @ejercicio.op3 = params.fetch("op3")
    @ejercicio.op4 = params.fetch("op4")
    @ejercicio.op5 = params.fetch("op5")
    @ejercicio.hint = params.fetch("hint")
    @ejercicio.dificultad = params.fetch("dificultad")
    @ejercicio.habilidad = params.fetch("habilidad")
    @ejercicio.last_pre_ex_id = params.fetch("last_pre_ex_id")
    @ejercicio.creador_id = current_creador.id
    @ejercicio.solucion = params.fetch("solucion")
    @ejercicio.imagen = params.fetch("imagen")

    if @ejercicio.valid?
      @ejercicio.save

      redirect_to("/ejercicios/#{@ejercicio.id}", :notice => "Ejercicio edited successfully.")
    else
      render("ejercicio_templates/new_form.html.erb")
    end
  end
  
  # To create a gemelo (mismo molde)
  def edit_row_gemelo
    @ejercicio = Ejercicio.find(params.fetch("id_to_modify"))

    @ejercicio.aprobado = false
    @ejercicio.contenido_id = params.fetch("contenido_id")
    @ejercicio.bandera = false
    @ejercicio.molde_id = params.fetch("molde_id")
    @ejercicio.enunciado = params.fetch("enunciado")
    @ejercicio.imagen = nil
    @ejercicio.resp_correcta = params.fetch("resp_correcta")
    @ejercicio.w1 = params.fetch("w1")
    @ejercicio.w2 = params.fetch("w2")
    @ejercicio.w3 = params.fetch("w3")
    @ejercicio.w4 = params.fetch("w4")
    @ejercicio.op1 = params.fetch("op1")
    @ejercicio.op2 = params.fetch("op2")
    @ejercicio.op3 = params.fetch("op3")
    @ejercicio.op4 = params.fetch("op4")
    @ejercicio.op5 = params.fetch("op5")
    @ejercicio.hint = params.fetch("hint")
    @ejercicio.dificultad = params.fetch("dificultad")
    @ejercicio.habilidad = params.fetch("habilidad")
    @ejercicio.last_pre_ex_id = params.fetch("last_pre_ex_id")
    @ejercicio.creador_id = current_creador.id
    @ejercicio.solucion = params.fetch("solucion")
    @ejercicio.imagen = params.fetch("imagen")
    
    @draft = PreEx.find(params.fetch("last_pre_ex_id"))
    @molde = Molde.find(params.fetch("molde_id"))

    if @ejercicio.valid?
      @ejercicio.save

      render("pre_ex_templates/new_form.html.erb", :notice => "Ejercicio edited successfully. Procceda a generar un gemelo")
    else
      render("ejercicio_templates/new_form.html.erb")
    end
  end
  
  
  
  def destroy_row
    @ejercicio = Ejercicio.find(params.fetch("id_to_remove"))

    @ejercicio.destroy

    redirect_back fallback_location: root_path
  end
end
