class Status < ActiveRecord::Base
  has_many :status_languages, dependent: :destroy
  has_many :events
end
