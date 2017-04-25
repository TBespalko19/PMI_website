class RemoveIntegerColumnFromAboutsAndCertificationsTables < ActiveRecord::Migration
  def change
    remove_column :abouts, :integer
    remove_column :certifications, :integer
  end
end
