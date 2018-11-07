class CreateEjercicios < ActiveRecord::Migration[5.1]
  def change
    create_table :ejercicios do |t|
      t.boolean :aprobado
      t.integer :contenido_id
      t.boolean :bandera
      t.text :comentario
      t.integer :molde_id
      t.text :enunciado
      t.string :imagen
      t.string :resp_correcta
      t.text :w1
      t.text :w2
      t.text :w3
      t.text :w4
      t.text :op1
      t.text :op2
      t.text :op3
      t.text :op4
      t.text :op5
      t.text :hint
      t.integer :dificultad
      t.string :habilidad
      t.integer :last_pre_ex_id
      t.integer :creador_id
      t.integer :aprobador_id

      t.timestamps
    end
  end
end
