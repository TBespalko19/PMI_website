class CreateVolunteers < ActiveRecord::Migration
  def change
    create_table :volunteers do |t|
      t.integer :lang_id
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
