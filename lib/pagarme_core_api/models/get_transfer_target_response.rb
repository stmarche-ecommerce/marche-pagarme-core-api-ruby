# pagarme_core_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeCoreApi
  # GetTransferTargetResponse Model.
  class GetTransferTargetResponse < BaseModel
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :target_id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :type

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['target_id'] = 'target_id'
      @_hash['type'] = 'type'
      @_hash
    end

    def initialize(target_id = nil,
                   type = nil)
      @target_id = target_id
      @type = type
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      target_id = hash['target_id']
      type = hash['type']

      # Create object from extracted values.
      GetTransferTargetResponse.new(target_id,
                                    type)
    end
  end
end
