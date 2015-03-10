class Location < ActiveRecord::Base

  belongs_to :user

  validates :zip_code, presence: true

  geocoded_by :zip_code

  after_validation :geocode, :if => :zip_code_changed?

end
