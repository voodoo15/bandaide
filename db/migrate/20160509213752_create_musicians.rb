class CreateMusicians < ActiveRecord::Migration
  def change
    create_table :musicians do |t|
      t.string :first_name 
      t.string :last_name
      t.string :city
      t.string :province
      t.string :address
      t.string :postal_code
      t.timestamps null: false
    end
  end
end
