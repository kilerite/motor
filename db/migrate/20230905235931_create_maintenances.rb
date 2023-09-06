class CreateMaintenances < ActiveRecord::Migration[7.0]
  def change
    create_table :maintenances do |t|

      t.string :maintenance_type, null: false

      t.references :engine, null: false, foreign_key: true
      t.references :city, null: false, foreign_key: true
      t.references :materials, null: false, foreign_key: true
      t.date :maintenance_date, null: false

      t.string :technician_email, null: false


      t.timestamps
    end
  end
end
