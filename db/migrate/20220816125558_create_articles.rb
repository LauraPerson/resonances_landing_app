class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :subtitle
      t.text :content
      t.datetime :publication_date
      t.string :author
      t.string :source_name
      t.string :source_link

      t.timestamps
    end
  end
end
