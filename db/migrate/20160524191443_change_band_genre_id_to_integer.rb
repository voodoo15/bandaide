class ChangeBandGenreIdToInteger < ActiveRecord::Migration
  def change
    change_column :bands, :genre_id, 'integer USING CAST(genre_id AS integer)'
  end
end
