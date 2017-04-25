class Country < ActiveRecord::Base
  has_many :cities, dependent: :destroy
  has_many :country_languages, dependent: :destroy
end
