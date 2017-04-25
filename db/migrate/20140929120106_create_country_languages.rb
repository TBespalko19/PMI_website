class CreateCountryLanguages < ActiveRecord::Migration
  def change
    create_table :country_languages do |t|
      t.string :title
      t.integer :lang_id
      t.integer :country_id

      t.timestamps
    end
  end
end
