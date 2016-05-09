class CreateBands < ActiveRecord::Migration
  def change
    create_table :bands do |t|
      t.string :name
      t.string :description
      t.string :genre_id

      t.timestamps null: false
    end
  end
end
