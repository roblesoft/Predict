class AddCostoToSales < ActiveRecord::Migration[5.2]
  def change
    add_column :sales, :costo, :integer
  end
end
