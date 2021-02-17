# pagarme_core_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module PagarmeCoreApi
  # Checkout payment request
  class CreateCheckoutPaymentRequest < BaseModel
    # Accepted Payment Methods
    # @return [List of String]
    attr_accessor :accepted_payment_methods

    # Accepted Multi Payment Methods
    # @return [List of Object]
    attr_accessor :accepted_multi_payment_methods

    # Success url
    # @return [String]
    attr_accessor :success_url

    # Default payment method
    # @return [String]
    attr_accessor :default_payment_method

    # Gateway Affiliation Id
    # @return [String]
    attr_accessor :gateway_affiliation_id

    # Credit Card payment request
    # @return [CreateCheckoutCreditCardPaymentRequest]
    attr_accessor :credit_card

    # Debit Card payment request
    # @return [CreateCheckoutDebitCardPaymentRequest]
    attr_accessor :debit_card

    # Boleto payment request
    # @return [CreateCheckoutBoletoPaymentRequest]
    attr_accessor :boleto

    # Customer is editable?
    # @return [Boolean]
    attr_accessor :customer_editable

    # Time in minutes for expiration
    # @return [Integer]
    attr_accessor :expires_in

    # Skip postpay success screen?
    # @return [Boolean]
    attr_accessor :skip_checkout_success_page

    # Billing Address is editable?
    # @return [Boolean]
    attr_accessor :billing_address_editable

    # Billing Address
    # @return [CreateAddressRequest]
    attr_accessor :billing_address

    # Bank Transfer payment request
    # @return [CreateCheckoutBankTransferRequest]
    attr_accessor :bank_transfer

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['accepted_payment_methods'] = 'accepted_payment_methods'
      @_hash['accepted_multi_payment_methods'] =
        'accepted_multi_payment_methods'
      @_hash['success_url'] = 'success_url'
      @_hash['default_payment_method'] = 'default_payment_method'
      @_hash['gateway_affiliation_id'] = 'gateway_affiliation_id'
      @_hash['credit_card'] = 'credit_card'
      @_hash['debit_card'] = 'debit_card'
      @_hash['boleto'] = 'boleto'
      @_hash['customer_editable'] = 'customer_editable'
      @_hash['expires_in'] = 'expires_in'
      @_hash['skip_checkout_success_page'] = 'skip_checkout_success_page'
      @_hash['billing_address_editable'] = 'billing_address_editable'
      @_hash['billing_address'] = 'billing_address'
      @_hash['bank_transfer'] = 'bank_transfer'
      @_hash
    end

    def initialize(accepted_payment_methods = nil,
                   accepted_multi_payment_methods = nil,
                   success_url = nil,
                   skip_checkout_success_page = nil,
                   billing_address_editable = nil,
                   billing_address = nil,
                   bank_transfer = nil,
                   default_payment_method = nil,
                   gateway_affiliation_id = nil,
                   credit_card = nil,
                   debit_card = nil,
                   boleto = nil,
                   customer_editable = nil,
                   expires_in = nil)
      @accepted_payment_methods = accepted_payment_methods
      @accepted_multi_payment_methods = accepted_multi_payment_methods
      @success_url = success_url
      @default_payment_method = default_payment_method
      @gateway_affiliation_id = gateway_affiliation_id
      @credit_card = credit_card
      @debit_card = debit_card
      @boleto = boleto
      @customer_editable = customer_editable
      @expires_in = expires_in
      @skip_checkout_success_page = skip_checkout_success_page
      @billing_address_editable = billing_address_editable
      @billing_address = billing_address
      @bank_transfer = bank_transfer
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      accepted_payment_methods = hash['accepted_payment_methods']
      accepted_multi_payment_methods = hash['accepted_multi_payment_methods']
      success_url = hash['success_url']
      skip_checkout_success_page = hash['skip_checkout_success_page']
      billing_address_editable = hash['billing_address_editable']
      if hash['billing_address']
        billing_address = CreateAddressRequest.from_hash(hash['billing_address'])
      end
      if hash['bank_transfer']
        bank_transfer = CreateCheckoutBankTransferRequest.from_hash(hash['bank_transfer'])
      end
      default_payment_method = hash['default_payment_method']
      gateway_affiliation_id = hash['gateway_affiliation_id']
      if hash['credit_card']
        credit_card = CreateCheckoutCreditCardPaymentRequest.from_hash(hash['credit_card'])
      end
      if hash['debit_card']
        debit_card = CreateCheckoutDebitCardPaymentRequest.from_hash(hash['debit_card'])
      end
      boleto = CreateCheckoutBoletoPaymentRequest.from_hash(hash['boleto']) if
        hash['boleto']
      customer_editable = hash['customer_editable']
      expires_in = hash['expires_in']

      # Create object from extracted values.
      CreateCheckoutPaymentRequest.new(accepted_payment_methods,
                                       accepted_multi_payment_methods,
                                       success_url,
                                       skip_checkout_success_page,
                                       billing_address_editable,
                                       billing_address,
                                       bank_transfer,
                                       default_payment_method,
                                       gateway_affiliation_id,
                                       credit_card,
                                       debit_card,
                                       boleto,
                                       customer_editable,
                                       expires_in)
    end
  end
end
