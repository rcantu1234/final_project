require 'open-uri'
class Location < ActiveRecord::Base

  belongs_to :user

  validates :zip_code, :user_id, presence: true
  geocoded_by :zip_code
  after_validation :geocode, :if => :zip_code_changed?

  DEVELOPER_API = "rfej9napna"

  def self.get_gas_stations(latitude, longitude, distance = 1, fuel_type = 'reg')
    gas_station_url = "http://devapi.mygasfeed.com/stations/radius/#{latitude}/#{longitude}/#{distance}/#{fuel_type}/distance/#{DEVELOPER_API}.json"
    response = open(gas_station_url).read
    JSON.parse(response)

    rescue JSON::ParserError => error
    puts "******"
    puts "Error Occured #{error}"
    puts "******"
    JSON.parse(response.split('</pre></div></pre>').last)
  end

   def self.get_gas_stations_address(latitude, longitude)
    gas_station_address_url = "http://devapi.mygasfeed.com/locations/geoaddress/#{latitude}/#{longitude}/#{DEVELOPER_API}.json"
    response = open(gas_station_address_url).read
    JSON.parse(response)

    rescue JSON::ParserError => error
    puts "******"
    puts "Error Occured #{error}"
    puts "******"
    JSON.parse(response.split('</pre></div></pre>').last)
  end

end
