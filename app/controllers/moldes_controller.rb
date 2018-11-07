class MoldesController < ApplicationController
  def index
    @moldes = Molde.all

    render("molde_templates/index.html.erb")
  end

  def show
    @molde = Molde.find(params.fetch("id_to_display"))

    render("molde_templates/show.html.erb")
  end

  def new_form
    render("molde_templates/new_form.html.erb")
  end

  def create_row
    @molde = Molde.new


    if @molde.valid?
      @molde.save

      redirect_to("/moldes", :notice => "Molde created successfully.")
    else
      render("molde_templates/new_form.html.erb")
    end
  end

  def edit_form
    @molde = Molde.find(params.fetch("prefill_with_id"))

    render("molde_templates/edit_form.html.erb")
  end

  def update_row
    @molde = Molde.find(params.fetch("id_to_modify"))


    if @molde.valid?
      @molde.save

      redirect_to("/moldes/#{@molde.id}", :notice => "Molde updated successfully.")
    else
      render("molde_templates/edit_form.html.erb")
    end
  end

  def destroy_row
    @molde = Molde.find(params.fetch("id_to_remove"))

    @molde.destroy

    redirect_to("/moldes", :notice => "Molde deleted successfully.")
  end
end
