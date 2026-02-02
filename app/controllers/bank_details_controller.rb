class BankDetailsController < ApplicationController

def show
  @payment = Payment.find(params[:payment_id])
  @bank_detail = @payment.bank_detail
end

  def create
    @payment = Payment.find(params[:payment_id])
    @bank_detail = @payment.create_bank_detail(bank_detail_params)
    redirect_to payment_bank_detail_path(@payment, @bank_detail)
  end

  def bank_detail_params
    params.require(:bank_detail).permit(:name, :adress,  :phone, :settlement_account, :correspondent_account, :BIK, 
                                        :bank_name, :INN, :KPP, :OKPO, :OGRN, :OKWED, pictures:[] )
  end
end
