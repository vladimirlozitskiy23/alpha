class SportClubsController < ApplicationController

  def index
    @sport_club= SportClub.all
  end

  def new
    @sport_club = SportClub.new
  end

  def create 
    @sport_club = SportClub.new(new_params)
    if @sport_club.save 
      redirect_to @sport_club
    else
      render :new
    end
  end

  def show
    @sport_club = SportClub.find(params[:id])
  end

  def destroy
    @sport_club = SportClub.find(params[:id])
    @sport_club.destroy
    redirect_to @sport_club 
  end

  private

  def new_params
    params.require(:sport_club).permit(:name, :director_name, :adress, :email, :phone, :site,  pictures:[])
  end  

end
