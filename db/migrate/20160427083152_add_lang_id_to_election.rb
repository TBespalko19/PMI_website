class AddLangIdToElection < ActiveRecord::Migration
  def change
    add_column :elections, :lang_id, :integer
  end
end
