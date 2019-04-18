class RemoveMonthToSales < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key :sales, name: "month_id"
  end
end
