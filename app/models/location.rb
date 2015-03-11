require 'open-uri'
class Location < ActiveRecord::Base

  belongs_to :user
  validates :zip_code, presence: true
  geocoded_by :zip_code
  after_validation :geocode, :if => :zip_code_changed?

  DEVELOPER_API = "rfej9napna"

  def self.get_gas_stations(latitude, longitude, distance = 10, fuel_type = 'reg')
    gas_station_url = " http://devapi.mygasfeed.com/stations/radius/#{latitude}/#{longitude}/#{distance}/#{fuel_type}/distance/#{DEVELOPER_API}.json"
    response = open(gas_station_url).read.to_json


    byebug
  end

end
