# pagarme_core_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeCoreApi
  # CreateEmvDataDecryptRequest Model.
  class CreateEmvDataDecryptRequest < BaseModel
    # Emv Decrypt cipher type
    # @return [String]
    attr_accessor :cipher

    # Dukpt data request
    # @return [CreateEmvDataDukptDecryptRequest]
    attr_accessor :dukpt

    # Encrypted tags list
    # @return [List of CreateEmvDataTlvDecryptRequest]
    attr_accessor :tags

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['cipher'] = 'cipher'
      @_hash['dukpt'] = 'dukpt'
      @_hash['tags'] = 'tags'
      @_hash
    end

    def initialize(cipher = nil,
                   tags = nil,
                   dukpt = nil)
      @cipher = cipher
      @dukpt = dukpt
      @tags = tags
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      cipher = hash['cipher']
      # Parameter is an array, so we need to iterate through it
      tags = nil
      unless hash['tags'].nil?
        tags = []
        hash['tags'].each do |structure|
          tags << (CreateEmvDataTlvDecryptRequest.from_hash(structure) if structure)
        end
      end
      dukpt = CreateEmvDataDukptDecryptRequest.from_hash(hash['dukpt']) if
        hash['dukpt']

      # Create object from extracted values.
      CreateEmvDataDecryptRequest.new(cipher,
                                      tags,
                                      dukpt)
    end
  end
end
