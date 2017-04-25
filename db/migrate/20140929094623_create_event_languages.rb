class CreateEventLanguages < ActiveRecord::Migration
  def change
    create_table :event_languages do |t|
      t.string :title
      t.text :short_event
      t.text :body
      t.string :author
      t.integer :event_id
      t.integer :lang_id

      t.timestamps
    end
  end
end
