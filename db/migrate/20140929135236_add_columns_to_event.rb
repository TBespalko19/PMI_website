class AddColumnsToEvent < ActiveRecord::Migration
  def change
    add_column :events, :start_date, :datetime
    add_column :events, :end_date, :datetime
    add_column :events, :duration, :integer
  end
end
