# pagarme_core_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module PagarmeCoreApi
  # GetCheckoutBoletoPaymentResponse Model.
  class GetCheckoutBoletoPaymentResponse < BaseModel
    # Data de vencimento do boleto
    # @return [DateTime]
    attr_accessor :due_at

    # Instruções do boleto
    # @return [String]
    attr_accessor :instructions

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['due_at'] = 'due_at'
      @_hash['instructions'] = 'instructions'
      @_hash
    end

    def initialize(due_at = nil,
                   instructions = nil)
      @due_at = due_at
      @instructions = instructions
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      due_at = APIHelper.rfc3339(hash['due_at']) if hash['due_at']
      instructions = hash['instructions']

      # Create object from extracted values.
      GetCheckoutBoletoPaymentResponse.new(due_at,
                                           instructions)
    end
  end
end
