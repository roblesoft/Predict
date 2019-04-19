class RemoveCicleToMonth < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key :months, name: "cicle_id"
  end
end
