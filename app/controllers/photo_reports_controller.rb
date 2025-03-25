class PhotoReportsController < ApplicationController
  def new
    @photo_report = PhotoReport.new
  end

  def index
    @photo_report = PhotoReport.all
    @news = News.all
    @video = Video.all
    render "news/index"
  end

  def create 
    @photo_report = PhotoReport.new(photo_report_params)
    if @photo_report.save 
      redirect_to @photo_report
    else
      render :new
    end
  end

  def show
    @photo_report = PhotoReport.find(params[:id])
  end

  def destroy
    @photo_report = PhotoReport.find(params[:id])
    @photo_report.destroy
    redirect_to @photo_report
  end

  def photo_report_params
    params.require(:photo_report).permit(:title, :body, :images)
  end  
end
