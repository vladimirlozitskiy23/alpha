class ObituariesController < ApplicationController

  def index
    @obituaries = Obituary.all
  end

  def new
    @obituary = Obituary.new
  end

  def create 
    @obituary = Obituary.new(obituary_params)
    if @obituary.save 
      redirect_to @obituary
    else
      render :new
    end
  end

  def show
    @obituary = Obituary.find(params[:id])
  end

  def destroy
    @obituary = Obituary.find(params[:id])
    @obituary.destroy
    redirect_to @obituary
  end

  private

  def obituary_params
    params.require(:obituary).permit(:name, :rank, :biography, :death,  pictures:[])
  end  

end
