class ChangeApprovalsBooleanField < ActiveRecord::Migration
  def change
    change_column :approvals, :approved, :boolean, default: false
  end
end
