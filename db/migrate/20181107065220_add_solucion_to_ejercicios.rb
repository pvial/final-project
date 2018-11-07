class AddSolucionToEjercicios < ActiveRecord::Migration[5.1]
  def change
    add_column :ejercicios, :solucion, :text
  end
end
