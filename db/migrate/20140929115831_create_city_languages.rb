class CreateCityLanguages < ActiveRecord::Migration
  def change
    create_table :city_languages do |t|
      t.string :title
      t.integer :lang_id
      t.integer :city_id

      t.timestamps
    end
  end
end
