class AddMusicianIdToBand < ActiveRecord::Migration
  def change
    add_column :bands, :musician_id, :integer
  end
end
