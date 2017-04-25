class AddShortNewsToNews < ActiveRecord::Migration
  def change
    add_column :news, :short_news, :string
  end
end
