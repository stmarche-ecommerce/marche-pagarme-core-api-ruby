# pagarme_core_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeCoreApi
  # Response object for geetting an order device
  class GetDeviceResponse < BaseModel
    # Device's platform name
    # @return [String]
    attr_accessor :platform

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['platform'] = 'platform'
      @_hash
    end

    def initialize(platform = nil)
      @platform = platform
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      platform = hash['platform']

      # Create object from extracted values.
      GetDeviceResponse.new(platform)
    end
  end
end
