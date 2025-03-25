class NewsController < ApplicationController

  def index
    @news = News.all
    @photo_report = PhotoReport.all
    @video = Video.all
  end

  def new
    @new = News.new
  end

  def create 
    @new = News.new(new_params)
    if @new.save 
      redirect_to @new
    else
      render :new
    end
  end

  def show
    @new = News.find(params[:id])
  end

  def destroy
    @new = News.find(params[:id])
    @new.destroy
    redirect_to @new
  end

  private

  def new_params
    params.require(:news).permit(:title, :body, :image, pictures:[])
  end  
end
