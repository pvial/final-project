class AddSubContenidoIdToPreExes < ActiveRecord::Migration[5.1]
  def change
    add_column :pre_exes, :sub_contenido_id, :integer
  end
end
