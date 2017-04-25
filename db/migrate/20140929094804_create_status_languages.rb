class CreateStatusLanguages < ActiveRecord::Migration
  def change
    create_table :status_languages do |t|
      t.string :title
      t.integer :status_id
      t.integer :lang_id

      t.timestamps
    end
  end
end
