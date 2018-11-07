class AddSolucionToPreExes < ActiveRecord::Migration[5.1]
  def change
    add_column :pre_exes, :solucion, :text
  end
end
