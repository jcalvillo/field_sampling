# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment',  __FILE__)

require 'openssl'
OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

require 'google_maps_service'
# Setup global parameters
GoogleMapsService.configure do |config|
  config.key = 'AIzaSyAtEhW3fIf9xkfpRZ8f_HEkV3pk2zxqsvI'
end

# Initialize client using global parameters
gmaps = GoogleMapsService::Client.new


run Rails.application
