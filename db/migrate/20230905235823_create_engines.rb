class CreateEngines < ActiveRecord::Migration[7.0]
  def change
    create_table :engines do |t|
    
      t.string :engine_type, null: false
      t.string :name, null: false

      t.text :description, null: false

      t.string :photo, null: false


      t.timestamps
    end
  end
end
