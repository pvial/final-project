class CreateMoldes < ActiveRecord::Migration[5.1]
  def change
    create_table :moldes do |t|

      t.timestamps
    end
  end
end
