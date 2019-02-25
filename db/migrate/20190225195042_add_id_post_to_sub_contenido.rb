class AddIdPostToSubContenido < ActiveRecord::Migration[5.1]
  def change
    add_column :sub_contenidos, :id_post, :integer
  end
end
