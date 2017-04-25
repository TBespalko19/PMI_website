class CreateSimpleRegistrations < ActiveRecord::Migration
  def change
    create_table :simple_registrations do |t|
      t.integer :event_id
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :email
      t.string :company
      t.string :city
      t.string :comment

      t.timestamps
    end
  end
end
