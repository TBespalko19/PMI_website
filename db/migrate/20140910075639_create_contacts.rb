class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :title
      t.text :body
      t.integer :lang_id

      t.timestamps
    end
  end
end
