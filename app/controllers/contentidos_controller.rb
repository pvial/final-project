class ContentidosController < ApplicationController
  
  def index_porcontenido
    @contentidos = Contentido.where(:final => 1)
    @ejercicios= Ejercicio.all

    render("contentido_templates/porcontenidos.html.erb")
  end

  def index_porcontenido_total
    @contentidos = Contentido.where(:final => 1).sort_by{ |c| c.ejercicios.count }
    @ejercicios= Ejercicio.all

    render("contentido_templates/porcontenidos.html.erb")
  end
  
  def index_porcontenido_muyfacil
    @contentidos = Contentido.where(:final => 1).sort_by{ |c| c.ejercicios.where(:dificultad => 1).count }
    @ejercicios= Ejercicio.all

    render("contentido_templates/porcontenidos.html.erb")
  end
  
  def index_porcontenido_facil
    @contentidos = Contentido.where(:final => 1).sort_by{ |c| c.ejercicios.where(:dificultad => 2).count }
    @ejercicios= Ejercicio.all

    render("contentido_templates/porcontenidos.html.erb")
  end
  
  def index_porcontenido_medio
    @contentidos = Contentido.where(:final => 1).sort_by{ |c| c.ejercicios.where(:dificultad => 3).count }
    @ejercicios= Ejercicio.all

    render("contentido_templates/porcontenidos.html.erb")
  end
  
  def index_porcontenido_dificil
    @contentidos = Contentido.where(:final => 1).sort_by{ |c| c.ejercicios.where(:dificultad => 4).count }
    @ejercicios= Ejercicio.all

    render("contentido_templates/porcontenidos.html.erb")
  end
  
  def index_porcontenido_muydificil
    @contentidos = Contentido.where(:final => 1).sort_by{ |c| c.ejercicios.where(:dificultad => 5).count }
    @ejercicios= Ejercicio.all

    render("contentido_templates/porcontenidos.html.erb")
  end
  
  
  
  def index_pormolde
    @moldes = Molde.all
    @ejercicios= Ejercicio.all
    
    render("contentido_templates/pormolde.html.erb")
  end
  
  def index_pordificultad
    @contentidos = Contentido.all
    @ejercicios= Ejercicio.all
    
    render("contentido_templates/pordificultad.html.erb")
  end

  def show
    @contentido = Contentido.find(params.fetch("id_to_display"))

    render("contentido_templates/show.html.erb")
  end

  def new_form
    render("contentido_templates/new_form.html.erb")
  end

  def create_row
    @contentido = Contentido.new

    @contentido.eje_id = params.fetch("eje_id")

    if @contentido.valid?
      @contentido.save

      redirect_to("/contentidos", :notice => "Contentido created successfully.")
    else
      render("contentido_templates/new_form.html.erb")
    end
  end

  def edit_form
    @contentido = Contentido.find(params.fetch("prefill_with_id"))

    render("contentido_templates/edit_form.html.erb")
  end

  def update_row
    @contentido = Contentido.find(params.fetch("id_to_modify"))

    @contentido.eje_id = params.fetch("eje_id")

    if @contentido.valid?
      @contentido.save

      redirect_to("/contentidos/#{@contentido.id}", :notice => "Contentido updated successfully.")
    else
      render("contentido_templates/edit_form.html.erb")
    end
  end

  def destroy_row
    @contentido = Contentido.find(params.fetch("id_to_remove"))

    @contentido.destroy

    redirect_to("/contentidos", :notice => "Contentido deleted successfully.")
  end
end
