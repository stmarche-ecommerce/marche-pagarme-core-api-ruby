# pagarme_core_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeCoreApi
  # UpdateSellerRequest Model.
  class UpdateSellerRequest < BaseModel
    # Seller name
    # @return [String]
    attr_accessor :name

    # Seller code
    # @return [String]
    attr_accessor :code

    # Seller description
    # @return [String]
    attr_accessor :description

    # Seller document CPF or CNPJ
    # @return [String]
    attr_accessor :document

    # Seller document CPF or CNPJ
    # @return [String]
    attr_accessor :status

    # Seller document CPF or CNPJ
    # @return [String]
    attr_accessor :type

    # Seller document CPF or CNPJ
    # @return [CreateAddressRequest]
    attr_accessor :address

    # Seller document CPF or CNPJ
    # @return [Array<String, String>]
    attr_accessor :metadata

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['name'] = 'name'
      @_hash['code'] = 'code'
      @_hash['description'] = 'description'
      @_hash['document'] = 'document'
      @_hash['status'] = 'status'
      @_hash['type'] = 'type'
      @_hash['address'] = 'address'
      @_hash['metadata'] = 'metadata'
      @_hash
    end

    def initialize(name = nil,
                   code = nil,
                   description = nil,
                   document = nil,
                   status = nil,
                   type = nil,
                   address = nil,
                   metadata = nil)
      @name = name
      @code = code
      @description = description
      @document = document
      @status = status
      @type = type
      @address = address
      @metadata = metadata
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      name = hash['name']
      code = hash['code']
      description = hash['description']
      document = hash['document']
      status = hash['status']
      type = hash['type']
      address = CreateAddressRequest.from_hash(hash['address']) if
        hash['address']
      metadata = hash['metadata']

      # Create object from extracted values.
      UpdateSellerRequest.new(name,
                              code,
                              description,
                              document,
                              status,
                              type,
                              address,
                              metadata)
    end
  end
end
