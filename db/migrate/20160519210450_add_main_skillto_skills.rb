class AddMainSkilltoSkills < ActiveRecord::Migration
  def change
    add_column :skills, :mainskill, :boolean, default: false
  end
end
