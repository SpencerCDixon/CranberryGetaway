class CreateRenters < ActiveRecord::Migration
  def change
    create_table :renters do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false 
      t.string :email, null: false 
      t.string :phone, null: false 
      t.datetime :start_date
      t.datetime :end_date
      t.text :description

      t.timestamps null: false
    end
  end
end
