class AddNombreToEjes < ActiveRecord::Migration[5.1]
  def change
    add_column :ejes, :nombre, :text
  end
end
