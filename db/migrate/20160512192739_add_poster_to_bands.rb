class AddPosterToBands < ActiveRecord::Migration
  def change
    add_column :bands, :poster, :string
  end
end
