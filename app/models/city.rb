class City < ActiveRecord::Base
  has_many :events
  has_many :city_languages, dependent: :destroy
  belongs_to :country
end
