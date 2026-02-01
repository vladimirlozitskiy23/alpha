class PaymentsController < ApplicationController

  def index
    @payment = Payment.all
  end

  def new
    @payment = Payment.new
  end

  def create 
    @payment = Payment.new(new_params)
    if @payment.save 
      redirect_to @payment
    else
      render :new
    end
  end

  def show
    @payment = Payment.find(params[:id])
  end

  def destroy
    @payment = Payment.find(params[:id])
    @payment.destroy
    redirect_to @payment
  end

  private

  def new_params
    params.require(:payment).permit(:title, :body,  pictures:[])
  end  

end
