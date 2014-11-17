class CreateMovements < ActiveRecord::Migration
  def change
    create_table :movements do |t|
      t.string :type
      t.integer :amount

      t.timestamps
    end
    add_index :movements, :type
  end
end
