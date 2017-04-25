class Event < ActiveRecord::Base
  has_many :event_languages, :dependent => :destroy
  has_many :city_languages, through: :cities
  has_many :status_languages, through: :status
  belongs_to :status
  belongs_to :city
  validates_presence_of :status_id
  validates_presence_of :city_id  
  accepts_nested_attributes_for :event_languages
  accepts_nested_attributes_for :status_languages
  accepts_nested_attributes_for :status
end
