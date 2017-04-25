class CountryLanguage < ActiveRecord::Base
  belongs_to :language
  belongs_to :country
  validates_presence_of :lang_id
  validates_presence_of :country_id
end
