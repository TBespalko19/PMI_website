class CreateLanguages < ActiveRecord::Migration
  def change
    create_table :languages do |t|
      t.integer :lang_id
      t.string :language

      t.timestamps
    end
  end
end
