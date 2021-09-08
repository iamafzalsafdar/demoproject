class AddRoleToUsermodel < ActiveRecord::Migration[6.1]
  def change
    add_column :usermodels, :role, :integer
  end
end
