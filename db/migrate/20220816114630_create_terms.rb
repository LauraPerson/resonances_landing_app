class CreateTerms < ActiveRecord::Migration[7.0]
  def change
    create_table :terms do |t|
      t.text :content

      t.timestamps
    end
  end
end
