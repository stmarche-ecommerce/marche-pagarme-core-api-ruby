# pagarme_core_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeCoreApi
  # Token data
  class CreateTokenRequest < BaseModel
    # Token type
    # @return [String]
    attr_accessor :type

    # Card data
    # @return [CreateCardTokenRequest]
    attr_accessor :card

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['type'] = 'type'
      @_hash['card'] = 'card'
      @_hash
    end

    def initialize(type = 'card',
                   card = nil)
      @type = type
      @card = card
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      type = hash['type'] ||= 'card'
      card = CreateCardTokenRequest.from_hash(hash['card']) if hash['card']

      # Create object from extracted values.
      CreateTokenRequest.new(type,
                             card)
    end
  end
end
