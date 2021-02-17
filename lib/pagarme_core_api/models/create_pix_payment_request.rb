# pagarme_core_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module PagarmeCoreApi
  # Contains information to create a pix payment
  class CreatePixPaymentRequest < BaseModel
    # Datetime when pix payment will expire
    # @return [DateTime]
    attr_accessor :expires_at

    # Seconds until pix payment expires
    # @return [Integer]
    attr_accessor :expires_in

    # Pix additional information
    # @return [List of PixAdditionalInformation]
    attr_accessor :additional_information

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['expires_at'] = 'expires_at'
      @_hash['expires_in'] = 'expires_in'
      @_hash['additional_information'] = 'additional_information'
      @_hash
    end

    def initialize(expires_at = nil,
                   expires_in = nil,
                   additional_information = nil)
      @expires_at = expires_at
      @expires_in = expires_in
      @additional_information = additional_information
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      expires_at = APIHelper.rfc3339(hash['expires_at']) if hash['expires_at']
      expires_in = hash['expires_in']
      # Parameter is an array, so we need to iterate through it
      additional_information = nil
      unless hash['additional_information'].nil?
        additional_information = []
        hash['additional_information'].each do |structure|
          additional_information << (PixAdditionalInformation.from_hash(structure) if structure)
        end
      end

      # Create object from extracted values.
      CreatePixPaymentRequest.new(expires_at,
                                  expires_in,
                                  additional_information)
    end
  end
end
