class AddApprovalToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :approval, :boolean
  end
end
