class AddFinalToContentidos < ActiveRecord::Migration[5.1]
  def change
    add_column :contentidos, :final, :integer
  end
end
