class AddSubContenidoIdToEjercicios < ActiveRecord::Migration[5.1]
  def change
    add_column :ejercicios, :sub_contenido_id, :integer
  end
end
