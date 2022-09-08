class AddOrderToWorkers < ActiveRecord::Migration[7.0]
  def change
    add_column :workers, :order, :integer, default: 0
  end
end
