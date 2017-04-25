class StatusLanguage < ActiveRecord::Base
  belongs_to :language
  belongs_to :status
  has_many :events, through: :status
  validates_presence_of :lang_id
  validates_presence_of :status_id
end
