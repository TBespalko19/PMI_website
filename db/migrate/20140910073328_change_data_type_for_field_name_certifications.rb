class ChangeDataTypeForFieldNameCertifications < ActiveRecord::Migration
  def up
      connection.execute(%q{
        alter table certifications
        alter column lang_id
        type integer using cast(lang_id as integer)
      })
  end
  def down
    change_table :certifications do |t|
      t.change :lang_id, :string
     end
  end  
 end
