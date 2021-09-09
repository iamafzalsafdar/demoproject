class AddLockableToExamples < ActiveRecord::Migration[6.1]
  def change
    add_column :usermodels, :failed_attempts, :integer, default: 4
    add_column :usermodels, :unlock_token, :string # Only if unlock strategy is :email or :both
    add_column :usermodels, :locked_at, :datetime
  end
end
