class SecuritiesController < ApplicationController

  def index
    @security = Security.all
  end

  def new
    @security = Security.new
  end

  def create 
    @security = Security.new(new_params)
    if @security.save 
      redirect_to @security
    else
      render :new
    end
  end

  def show
    @security = Security.find(params[:id])
  end

  def destroy
    @security = Security.find(params[:id])
    @security.destroy
    redirect_to @security
  end

  private

  def new_params
    params.require(:security).permit(:name, :director_name, :phone, :adress, :email, :site,  pictures:[])
  end  

end
