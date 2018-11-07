class CreatePreExes < ActiveRecord::Migration[5.1]
  def change
    create_table :pre_exes do |t|
      t.integer :contenido_id
      t.integer :molde_id
      t.text :enunciado
      t.string :imagen
      t.text :resp_correcta
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

      t.timestamps
    end
  end
end
