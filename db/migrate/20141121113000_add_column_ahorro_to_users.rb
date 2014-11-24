class AddColumnAhorroToUsers < ActiveRecord::Migration
  def change
    add_column :users, :ahorro, :integer
  end
end
