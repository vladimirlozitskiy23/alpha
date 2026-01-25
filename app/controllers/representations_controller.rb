class RepresentationsController < ApplicationController

  def new
    @representation = Representation.new
  end

  def index
   @representation = Representation.all
  end

  def create 
    @representation  = Representation .new(video_params)
    if @representation .save 
      redirect_to @representation 
    else
      render :new
    end
  end

  def show
    @representation  = Representation.find(params[:id])
  end

  def destroy
    @representation  = Representation.find(params[:id])
    @representation .destroy
    redirect_to @representation 
  end

  def video_params
    params.require(:representation ).permit(:sity, :adress, :president, pictures:[])
  end  

end
