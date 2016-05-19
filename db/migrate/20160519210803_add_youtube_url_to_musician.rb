class AddYoutubeUrlToMusician < ActiveRecord::Migration
  def change
    add_column :musicians, :youtube_url, :string
  end
end
