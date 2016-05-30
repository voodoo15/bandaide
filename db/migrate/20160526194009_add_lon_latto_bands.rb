class AddLonLattoBands < ActiveRecord::Migration
  def change
    add_column :bands, :latitude, :float
    add_column :bands, :longitude, :float
  end
end
