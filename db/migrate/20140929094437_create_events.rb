class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :event_id
      t.integer :status_id
      t.integer :city_id

      t.timestamps
    end
  end
end
