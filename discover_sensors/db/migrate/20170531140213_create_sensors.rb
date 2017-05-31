class CreateSensors < ActiveRecord::Migration[5.0]
  def change
    create_table :sensors do |t|
      t.string :name
      t.string :where
      t.string :area
      t.string :used_for
      t.string :level
      t.integer :scale
      t.integer :resolution
      t.integer :accuracy
      t.integer :time_result
      t.integer :time
      t.integer :innovation
      t.string :cost
      t.text :summary
      t.string :person
      t.string :reference_project
      t.text :info

      t.timestamps
    end
  end
end
