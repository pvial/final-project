class AddIdPreToSubContenido < ActiveRecord::Migration[5.1]
  def change
    add_column :sub_contenidos, :id_pre, :integer
  end
end
