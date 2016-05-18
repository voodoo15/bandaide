class RenameApprovalsTable < ActiveRecord::Migration
  def change
    rename_table :approval_tables, :approvals
  end
end
