class RemoveMusicianIdMemberIdFromPosition < ActiveRecord::Migration
  def change
    remove_column :positions, :musician_id
    remove_column :positions, :member_id
  end
end
