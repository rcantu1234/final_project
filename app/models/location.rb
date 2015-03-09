class Location < ActiveRecord::Base
  belongs_to :user

  geocoded_by :address
  after_validation :geocode, :if => :zip_code_changed?
end
