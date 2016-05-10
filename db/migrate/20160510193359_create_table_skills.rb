class CreateTableSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.integer :musician_id
      t.integer :position_id
    end
  end
end
