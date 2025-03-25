class VideosController < ApplicationController

  def new
    @video = Video.new
  end

  def index
    @video = Video.all
    @news = News.all
    @photo_report = PhotoReport.all
    render "news/index"
  end

  def create 
    @video = Video.new(video_params)
    if @video.save 
      redirect_to @video
    else
      render :new
    end
  end

  def show
    @video = Video.find(params[:id])
  end

  def destroy
    @video = Video.find(params[:id])
    @video.destroy
    redirect_to @video
  end

  def video_params
    params.require(:video).permit(:title, :url, :image, pictures:[])
  end  
end


