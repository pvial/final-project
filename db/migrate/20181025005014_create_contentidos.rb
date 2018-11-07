class CreateContentidos < ActiveRecord::Migration[5.1]
  def change
    create_table :contentidos do |t|
      t.integer :eje_id

      t.timestamps
    end
  end
end
