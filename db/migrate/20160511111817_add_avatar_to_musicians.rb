class AddAvatarToMusicians < ActiveRecord::Migration
  def change
    add_column :musicians, :avatar, :string
  end
end
