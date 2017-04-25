class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.integer :lang_id
      t.text :short_article
      t.text :body
      t.string :author

      t.timestamps
    end
  end
end
