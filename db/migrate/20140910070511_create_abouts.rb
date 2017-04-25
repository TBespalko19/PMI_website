class CreateAbouts < ActiveRecord::Migration
  def change
    create_table :abouts do |t|
      t.string :title
      t.text :body
      t.string :lang_id
      t.string :integer

      t.timestamps
    end
  end
end
