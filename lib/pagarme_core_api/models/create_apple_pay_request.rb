# pagarme_core_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeCoreApi
  # The ApplePay Token Payment Request
  class CreateApplePayRequest < BaseModel
    # The token version
    # @return [String]
    attr_accessor :version

    # The cryptography data
    # @return [String]
    attr_accessor :data

    # The ApplePay header request
    # @return [CreateApplePayHeaderRequest]
    attr_accessor :header

    # Detached PKCS #7 signature, Base64 encoded as string
    # @return [String]
    attr_accessor :signature

    # ApplePay Merchant identifier
    # @return [String]
    attr_accessor :merchant_identifier

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['version'] = 'version'
      @_hash['data'] = 'data'
      @_hash['header'] = 'header'
      @_hash['signature'] = 'signature'
      @_hash['merchant_identifier'] = 'merchant_identifier'
      @_hash
    end

    def initialize(version = nil,
                   data = nil,
                   header = nil,
                   signature = nil,
                   merchant_identifier = nil)
      @version = version
      @data = data
      @header = header
      @signature = signature
      @merchant_identifier = merchant_identifier
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      version = hash['version']
      data = hash['data']
      header = CreateApplePayHeaderRequest.from_hash(hash['header']) if
        hash['header']
      signature = hash['signature']
      merchant_identifier = hash['merchant_identifier']

      # Create object from extracted values.
      CreateApplePayRequest.new(version,
                                data,
                                header,
                                signature,
                                merchant_identifier)
    end
  end
end
