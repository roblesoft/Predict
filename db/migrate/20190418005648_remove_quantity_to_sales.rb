class RemoveQuantityToSales < ActiveRecord::Migration[5.2]
  def change
    remove_column :sales, :quantity
  end
end
