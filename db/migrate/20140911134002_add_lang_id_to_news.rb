class AddLangIdToNews < ActiveRecord::Migration
  def change
    add_column :news, :lang_id, :integer
  end
end
