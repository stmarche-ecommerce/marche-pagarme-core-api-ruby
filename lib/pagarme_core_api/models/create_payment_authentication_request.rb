# pagarme_core_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeCoreApi
  # The payment authentication request
  class CreatePaymentAuthenticationRequest < BaseModel
    # The Authentication type
    # @return [String]
    attr_accessor :type

    # The 3D-S authentication object
    # @return [CreateThreeDSecureRequest]
    attr_accessor :threed_secure

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['type'] = 'type'
      @_hash['threed_secure'] = 'threed_secure'
      @_hash
    end

    def initialize(type = nil,
                   threed_secure = nil)
      @type = type
      @threed_secure = threed_secure
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      type = hash['type']
      if hash['threed_secure']
        threed_secure = CreateThreeDSecureRequest.from_hash(hash['threed_secure'])
      end

      # Create object from extracted values.
      CreatePaymentAuthenticationRequest.new(type,
                                             threed_secure)
    end
  end
end
