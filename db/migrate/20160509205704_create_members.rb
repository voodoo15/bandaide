class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.integer :band_id
      t.integer :position_id
      t.integer :musician_id

      t.timestamps null: false
    end
  end
end
