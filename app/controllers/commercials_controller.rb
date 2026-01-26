class CommercialsController < ApplicationController

  def index
    @commercial = Commercial.all
  end

  def new
    @commercial = Commercial.new
  end

  def create 
    @commercial = Commercial.new(new_params)
    if @commercial.save 
      redirect_to @commercial
    else
      render :new
    end
  end

  def show
    @commercial = Commercial.find(params[:id])
  end

  def destroy
    @commercial = Commercial.find(params[:id])
    @commercial.destroy
    redirect_to @commercial
  end

  private

  def new_params
    params.require(:commercial).permit(:name, :director_name, :phone, :adress, :email, :site,  pictures:[])
  end  

end
