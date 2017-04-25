class ChangeShortNewsTypeInNews < ActiveRecord::Migration
  def change
    change_column :news, :short_news, :text
  end
end
