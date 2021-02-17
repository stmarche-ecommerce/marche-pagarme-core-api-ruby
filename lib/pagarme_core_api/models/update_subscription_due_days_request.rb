# pagarme_core_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeCoreApi
  # UpdateSubscriptionDueDaysRequest Model.
  class UpdateSubscriptionDueDaysRequest < BaseModel
    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :boleto_due_days

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['boleto_due_days'] = 'boleto_due_days'
      @_hash
    end

    def initialize(boleto_due_days = nil)
      @boleto_due_days = boleto_due_days
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      boleto_due_days = hash['boleto_due_days']

      # Create object from extracted values.
      UpdateSubscriptionDueDaysRequest.new(boleto_due_days)
    end
  end
end
