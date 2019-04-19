class RemoveMonthsToProduct < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :month_id
  end
end
