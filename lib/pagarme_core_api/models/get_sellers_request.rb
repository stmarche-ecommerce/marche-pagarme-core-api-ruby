# pagarme_core_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeCoreApi
  # GetSellersRequest Model.
  class GetSellersRequest < BaseModel
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :document

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :code

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :status

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :type

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :created_since

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :created_until

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['document'] = 'document'
      @_hash['code'] = 'code'
      @_hash['status'] = 'status'
      @_hash['type'] = 'type'
      @_hash['created_since'] = 'created_Since'
      @_hash['created_until'] = 'created_Until'
      @_hash
    end

    def initialize(name = nil,
                   document = nil,
                   code = nil,
                   status = nil,
                   type = nil,
                   created_since = nil,
                   created_until = nil)
      @name = name
      @document = document
      @code = code
      @status = status
      @type = type
      @created_since = created_since
      @created_until = created_until
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash['name']
      document = hash['document']
      code = hash['code']
      status = hash['status']
      type = hash['type']
      created_since = hash['created_Since']
      created_until = hash['created_Until']

      # Create object from extracted values.
      GetSellersRequest.new(name,
                            document,
                            code,
                            status,
                            type,
                            created_since,
                            created_until)
    end
  end
end
