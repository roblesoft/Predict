class RemoveEtToMonth < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key :months, name: "year_id"
  end
end
