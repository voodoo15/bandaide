class CreateSkillsTable < ActiveRecord::Migration
  def change
    create_table :skills_tables do |t|
      t.integer :musician_id
      t.integer :position_id
    end
  end
end
