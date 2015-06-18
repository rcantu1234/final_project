class LocationsController < ApplicationController
  before_action :set_location, only: [:show, :edit, :update, :destroy]

  # GET /locations
  # GET /locations.json
  def index
    if params[:search].present?
      @locations = Location.near(params[:search], 50, :order => :distance)
    else
      @locations = Location.all
    end

    @user = User.new
  end

  # GET /locations/1
  # GET /locations/1.json
  def show
    @location = Location.find(params[:id])
    geo_response = Geocoder.coordinates(params[:zip_code])
    loc_response = Location.get_gas_stations(@location.latitude, @location.longitude, @location.distance)
    #address_response = Location.get_gas_stations_address(@location.latitude, @location.longitude)
    @map_url  = "http://maps.googleapis.com/maps/api/staticmap?center=#{@location.latitude}, #{@location.longitude}&zoom=12&size=700x500&sensor=true&zoom=16&markers="

    @map_url += loc_response.fetch("stations", []).map do |station|
      "#{station['lat']}%2C#{station['lng']}"
    end.join('%7c')

    # @addresses = address_response.fetch("stations", []).map do |station|
    #   "#{station['address']}"
    # end.join('%7c')

  end

  # GET /locations/new
  def new
    @location = Location.new
    @user = User.new
  end

  # GET /locations/1/edit
  def edit
    @location = Location.find(params[:id])
  end

  # POST /locations
  # POST /locations.json
  def create
    @location = Location.new(location_params)

    geo_response = ::Geocoder.coordinates(params[:zip_code])

    respond_to do |format|

      if @location.save
        # UserMailer.new_meeting(@meeting).deliver
            #CREATE TWILIO REMINDER
       # Location.send_reminder_text_message("Zip Code: #{@location.zip_code},
       #                                 Latitude: #{@location.latitude},
       #                                 Longitude: #{@location.longitude},
       #                                 User: #{@location.user}")
        format.html { redirect_to @location, notice: 'Location was successfully created.' }
        format.json { render :show, status: :created, location: @location }
      else
        format.html { render :new }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /locations/1
  # PATCH/PUT /locations/1.json
  def update
    respond_to do |format|
      if @location.update(location_params)
        format.html { redirect_to @location, notice: 'Location was successfully updated.' }
        format.json { render :show, status: :ok, location: @location }
      else
        format.html { render :edit }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /locations/1
  # DELETE /locations/1.json
  def destroy
    @location.destroy
    respond_to do |format|
      format.html { redirect_to locations_url, notice: 'Location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_location
      @location = Location.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def location_params
      params.require(:location).permit(:zip_code, :address,
                                       :state, :city, :latitude, :longitude, :user_id, :distance, :fuel_type, :gas_price)
    end
end
