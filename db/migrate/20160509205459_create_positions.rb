class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.string :description
      t.integer :musician_id
      t.integer :member_id

      t.timestamps null: false
    end
  end
end
