class ApplicationController < ActionController::Base

  before_action :set_payment_bank_detail

def set_payment_bank_detail
  @payments = Payment.all
  @payment = @payments.first
  @bank_detail = @payment.bank_detail 
end

end
