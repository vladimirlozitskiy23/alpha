class AwardsController < ApplicationController

def new
  @award = Award.new  
end


def create
  @award = Award.new(awards_params)
  if @award.save
    redirect_to @award
  else
    render :new
  end
end

def edit
  @award = Award.find(params[:id])
end

def update
  @award = Award.find(params[:id])
  if @award.update(awards_params)
    redirect_to @award
  else
    render :edit
  end
end

def show 
  @award = Award.find(params[:id])
end

def awards_params
  params.require(:award).permit(:name, :text)
end

end
