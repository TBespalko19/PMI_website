class CityLanguage < ActiveRecord::Base
  belongs_to :city
  belongs_to :language
  validates_presence_of :city_id
  validates_presence_of :lang_id
end
