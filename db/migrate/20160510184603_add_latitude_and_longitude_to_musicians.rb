class AddLatitudeAndLongitudeToMusicians < ActiveRecord::Migration
  def change
    add_column :musicians, :latitude, :float
    add_column :musicians, :longitude, :float
  end
end
