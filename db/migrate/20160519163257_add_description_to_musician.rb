class AddDescriptionToMusician < ActiveRecord::Migration
  def change
    add_column :musicians, :description, :text
  end
end
