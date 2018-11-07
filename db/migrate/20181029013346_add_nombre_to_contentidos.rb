class AddNombreToContentidos < ActiveRecord::Migration[5.1]
  def change
    add_column :contentidos, :nombre, :text
  end
end
