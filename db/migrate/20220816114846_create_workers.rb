class CreateWorkers < ActiveRecord::Migration[7.0]
  def change
    create_table :workers do |t|
      t.string :name
      t.string :job
      t.string :link

      t.timestamps
    end
  end
end
