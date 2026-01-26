class SchoolsController < ApplicationController

  def index
    @school = School.all
  end

  def new
    @school = School.new
  end

  def create 
    @school = School.new(new_params)
    if @school.save 
      redirect_to @school
    else
      render :new
    end
  end

  def show
    @school = School.find(params[:id])
  end

  def destroy
    @school = School.find(params[:id])
    @school.destroy
    redirect_to @school
  end

  private

  def new_params
    params.require(:school).permit(:name, :director_name, :phone, :adress, :email, :site,  pictures:[])
  end  

end
