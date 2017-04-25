class AddPublishDateToNews < ActiveRecord::Migration
  def change
    add_column :news, :publish_date, :datetime
  end
end
