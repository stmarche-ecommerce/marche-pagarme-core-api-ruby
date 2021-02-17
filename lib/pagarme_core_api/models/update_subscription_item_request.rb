# pagarme_core_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeCoreApi
  # Request for updating a subscription item
  class UpdateSubscriptionItemRequest < BaseModel
    # Description
    # @return [String]
    attr_accessor :description

    # Status
    # @return [String]
    attr_accessor :status

    # Pricing scheme
    # @return [UpdatePricingSchemeRequest]
    attr_accessor :pricing_scheme

    # Item name
    # @return [String]
    attr_accessor :name

    # Number of cycles that the item will be charged
    # @return [Integer]
    attr_accessor :cycles

    # Quantity
    # @return [Integer]
    attr_accessor :quantity

    # Minimum price
    # @return [Integer]
    attr_accessor :minimum_price

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['description'] = 'description'
      @_hash['status'] = 'status'
      @_hash['pricing_scheme'] = 'pricing_scheme'
      @_hash['name'] = 'name'
      @_hash['cycles'] = 'cycles'
      @_hash['quantity'] = 'quantity'
      @_hash['minimum_price'] = 'minimum_price'
      @_hash
    end

    def initialize(description = nil,
                   status = nil,
                   pricing_scheme = nil,
                   name = nil,
                   cycles = nil,
                   quantity = nil,
                   minimum_price = nil)
      @description = description
      @status = status
      @pricing_scheme = pricing_scheme
      @name = name
      @cycles = cycles
      @quantity = quantity
      @minimum_price = minimum_price
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      description = hash['description']
      status = hash['status']
      if hash['pricing_scheme']
        pricing_scheme = UpdatePricingSchemeRequest.from_hash(hash['pricing_scheme'])
      end
      name = hash['name']
      cycles = hash['cycles']
      quantity = hash['quantity']
      minimum_price = hash['minimum_price']

      # Create object from extracted values.
      UpdateSubscriptionItemRequest.new(description,
                                        status,
                                        pricing_scheme,
                                        name,
                                        cycles,
                                        quantity,
                                        minimum_price)
    end
  end
end
