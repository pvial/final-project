class SubContenidosController < ApplicationController
  def index
    @sub_contenidos = SubContenido.all
    @ejercicios = Ejercicio.all
    render("sub_contenido_templates/index.html.erb")
  end
  
  def index_total
    @sub_contenidos = SubContenido.all.sort_by{ |c| c.ejercicios.count }
    @ejercicios = Ejercicio.all
    render("sub_contenido_templates/index.html.erb")
  end
  
  def index_muyfacil
    @sub_contenidos = SubContenido.all.sort_by{ |c| c.ejercicios.where(:dificultad => 1).count }
    @ejercicios = Ejercicio.all
    render("sub_contenido_templates/index.html.erb")
  end
  
  def index_facil
    @sub_contenidos = SubContenido.all.sort_by{ |c| c.ejercicios.where(:dificultad => 2).count }
    @ejercicios = Ejercicio.all
    render("sub_contenido_templates/index.html.erb")
  end
  
  def index_medio
    @sub_contenidos = SubContenido.all.sort_by{ |c| c.ejercicios.where(:dificultad => 3).count }
    @ejercicios = Ejercicio.all
    render("sub_contenido_templates/index.html.erb")
  end
  
  def index_dificil
    @sub_contenidos = SubContenido.all.sort_by{ |c| c.ejercicios.where(:dificultad => 4).count }
    @ejercicios = Ejercicio.all
    render("sub_contenido_templates/index.html.erb")
  end
  
  def index_muydificil
    @sub_contenidos = SubContenido.all.sort_by{ |c| c.ejercicios.where(:dificultad => 5).count }
    @ejercicios = Ejercicio.all
    render("sub_contenido_templates/index.html.erb")
  end
  
  def show
    @sub_contenido = SubContenido.find(params.fetch("id_to_display"))

    render("sub_contenido_templates/show.html.erb")
  end

  def new_form
    render("sub_contenido_templates/new_form.html.erb")
  end

  def create_row
    @sub_contenido = SubContenido.new

    @sub_contenido.contenido_id = params.fetch("contenido_id")
    @sub_contenido.nombre = params.fetch("nombre")

    if @sub_contenido.valid?
      @sub_contenido.save

      redirect_to("/sub_contenidos", :notice => "Sub contenido created successfully.")
    else
      render("sub_contenido_templates/new_form.html.erb")
    end
  end

  def edit_form
    @sub_contenido = SubContenido.find(params.fetch("prefill_with_id"))

    render("sub_contenido_templates/edit_form.html.erb")
  end

  def update_row
    @sub_contenido = SubContenido.find(params.fetch("id_to_modify"))

    @sub_contenido.contenido_id = params.fetch("contenido_id")
    @sub_contenido.nombre = params.fetch("nombre")

    if @sub_contenido.valid?
      @sub_contenido.save

      redirect_to("/sub_contenidos/#{@sub_contenido.id}", :notice => "Sub contenido updated successfully.")
    else
      render("sub_contenido_templates/edit_form.html.erb")
    end
  end

  def destroy_row
    @sub_contenido = SubContenido.find(params.fetch("id_to_remove"))

    @sub_contenido.destroy

    redirect_to("/sub_contenidos", :notice => "Sub contenido deleted successfully.")
  end
end
