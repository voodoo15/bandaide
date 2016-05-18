class CreateApprovalTable < ActiveRecord::Migration
  def change
    create_table :approval_tables do |t|
      t.integer :member_id
      t.integer :musician_id
      t.boolean :approved
    end
  end
end
