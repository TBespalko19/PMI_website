class Language < ActiveRecord::Base
  has_many :certifications
  has_many :articles
  has_many :abouts
  has_many :contacts
  has_many :memberships
  has_many :news
  has_many :country_languages
  has_many :city_languages
  has_many :event_languages
  has_many :status_languages
end
