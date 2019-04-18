class RemoveMonthsToSales < ActiveRecord::Migration[5.2]
  def change
    remove_column :sales, :month_id
  end
end
