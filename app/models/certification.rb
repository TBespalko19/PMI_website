class Certification < ActiveRecord::Base
  belongs_to :language
  validates_presence_of :lang_id
end
