class ClubsController < ApplicationController

  def index
    @club = Club.all
  end

  def new
    @club = Club.new
  end

  def create 
    @club = Club.new(new_params)
    if @club.save 
      redirect_to @club
    else
      render :new
    end
  end

  def show
    @club = Club.find(params[:id])
  end

  def destroy
    @club = Club.find(params[:id])
    @club.destroy
    redirect_to @club
  end

  private

  def new_params
    params.require(:club).permit(:name, :director_name, :adress, :email,  pictures:[])
  end  

end
