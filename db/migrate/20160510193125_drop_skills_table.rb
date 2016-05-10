class DropSkillsTable < ActiveRecord::Migration
  def change
    drop_table :skills_tables
  end
end
