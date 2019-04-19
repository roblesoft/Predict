class CreateCicles < ActiveRecord::Migration[5.2]
  def change
    create_table :cicles do |t|
      t.integer :name

      t.timestamps
    end
    add_reference :months, :cicle, foreign_key: true
  end
end
