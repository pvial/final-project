class CreateSubContenidos < ActiveRecord::Migration[5.1]
  def change
    create_table :sub_contenidos do |t|
      t.integer :contenido_id
      t.text :nombre

      t.timestamps
    end
  end
end
