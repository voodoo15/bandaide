class CreateApprovals < ActiveRecord::Migration
  def change
    create_table :approvals do |t|

      t.timestamps null: false
    end
  end
end
