class RemoveKeyToMonth < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key :months, :year
    remove_foreign_key :months, column: :year_id
  end
end
