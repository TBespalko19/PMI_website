class ChangeDurationColumnTypeInEvent < ActiveRecord::Migration
  def change
    change_column :events, :duration, :decimal
  end
end
