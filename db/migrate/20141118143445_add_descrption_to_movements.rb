class AddDescrptionToMovements < ActiveRecord::Migration
  def change
    add_column :movements, :description, :text
  end
end
