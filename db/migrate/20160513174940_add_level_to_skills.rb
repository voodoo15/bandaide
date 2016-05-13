class AddLevelToSkills < ActiveRecord::Migration
  def change
    add_column :skills, :level, :integer
  end
end
