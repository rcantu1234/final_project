require 'open-uri'

require 'twilio-ruby'

class Location < ActiveRecord::Base

  belongs_to :user

  validates :zip_code, :user_id, presence: true
  validates_length_of :zip_code, minimum: 5, maximum: 5

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

   def to_s
   # time.truncate(15)
  end

  def self.establish_twilio
    @account_sid = ENV['twilio_account_sid']
    @auth_token = ENV['twilio_auth_token']
    @from_phone_number = ENV['twilio_phone_number']
    @twilio_client = Twilio::REST::Client.new(@account_sid, @auth_token)
  end


  def self.send_reminder_text_message(body)
      @account_sid = ENV['twilio_account_sid']
      @auth_token = ENV['twilio_auth_token']
      @from_phone_number = ENV['twilio_phone_number']

      @twilio_client = Twilio::REST::Client.new(@account_sid, @auth_token)

      @twilio_client.messages.create( to: "512-981-9768",
                                      from: @from_phone_number,
                                      body: body
                                             )
  end
  # def self.get_gas_prices
  #   stations.map { |station| station['reg_price']}
  # end

  # def self.get_gas_stations_address(latitude, longitude)
  #   gas_station_address_url = "http://devapi.mygasfeed.com/locations/geoaddress/#{latitude}/#{longitude}/#{DEVELOPER_API}.json"
  #   response = open(gas_station_address_url).read
  #   JSON.parse(response)

  #   rescue JSON::ParserError => error
  #   puts "******"
  #   puts "Error Occured #{error}"
  #   puts "******"
  #   JSON.parse(response.split('</pre></div></pre>').last)
  # end
end


def self.phone_call_fun_time
  Meeting.establish_twilio
  @twilio_client.account.calls.create(url: 'http://demo.twilio.com/docs/voice.xml',
                                      from: '@from_phone_number',
                                      to: '(205)807-2847')
end
