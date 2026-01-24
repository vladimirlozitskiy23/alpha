class EmployeesController < ApplicationController

  def index
    @news = News.all
    @photo_report = PhotoReport.all
    @video = Video.all
    @employee = Employee.all
  end

  def new
    @employee = Employee.new
  end

  def create 
    @employee = Employee.new(new_params)
    if @employee.save 
      redirect_to @employee
    else
      render :new
    end
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
    redirect_to @employee
  end

  private

  def new_params
    params.require(:employee).permit(:name, :rank, :position, :award, :biography,  pictures:[])
  end  
end



