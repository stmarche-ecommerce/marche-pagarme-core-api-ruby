# pagarme_core_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module PagarmeCoreApi
  # Response object for getting a discount
  class GetDiscountResponse < BaseModel
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :id

    # TODO: Write general description for this method
    # @return [Float]
    attr_accessor :value

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :discount_type

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :status

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :created_at

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :cycles

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :deleted_at

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :description

    # TODO: Write general description for this method
    # @return [GetSubscriptionResponse]
    attr_accessor :subscription

    # The subscription item
    # @return [GetSubscriptionItemResponse]
    attr_accessor :subscription_item

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['value'] = 'value'
      @_hash['discount_type'] = 'discount_type'
      @_hash['status'] = 'status'
      @_hash['created_at'] = 'created_at'
      @_hash['cycles'] = 'cycles'
      @_hash['deleted_at'] = 'deleted_at'
      @_hash['description'] = 'description'
      @_hash['subscription'] = 'subscription'
      @_hash['subscription_item'] = 'subscription_item'
      @_hash
    end

    def initialize(id = nil,
                   value = nil,
                   discount_type = nil,
                   status = nil,
                   created_at = nil,
                   cycles = nil,
                   deleted_at = nil,
                   description = nil,
                   subscription = nil,
                   subscription_item = nil)
      @id = id
      @value = value
      @discount_type = discount_type
      @status = status
      @created_at = created_at
      @cycles = cycles
      @deleted_at = deleted_at
      @description = description
      @subscription = subscription
      @subscription_item = subscription_item
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash['id']
      value = hash['value']
      discount_type = hash['discount_type']
      status = hash['status']
      created_at = APIHelper.rfc3339(hash['created_at']) if hash['created_at']
      cycles = hash['cycles']
      deleted_at = APIHelper.rfc3339(hash['deleted_at']) if hash['deleted_at']
      description = hash['description']
      subscription = GetSubscriptionResponse.from_hash(hash['subscription']) if
        hash['subscription']
      if hash['subscription_item']
        subscription_item = GetSubscriptionItemResponse.from_hash(hash['subscription_item'])
      end

      # Create object from extracted values.
      GetDiscountResponse.new(id,
                              value,
                              discount_type,
                              status,
                              created_at,
                              cycles,
                              deleted_at,
                              description,
                              subscription,
                              subscription_item)
    end
  end
end
