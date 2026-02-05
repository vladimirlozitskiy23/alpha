class AuthoritiesController < ApplicationController

def index
  @authorities = Authority.order(:status)
end

def new
  @authority = Authority.new
end

def create 
  @authority = Authority.new(authority_params)
  if @authority.save
    redirect_to @authority
  else
    render :new
  end

end

def show
  @authority = Authority.find(params[:id])
end

def edit
  @authority = Authority.find(params[:id])
end

def update
  @authority = Authority.find(params[:id])
  if @authority.update(authority_params)
    redirect_to @authority
  else
    render :edit
  end
end

def destroy
  @authority = Authority.find(params[:id])
  @authority.destroy
  redirect_to authorities_path
end

def authority_params
  params.require(:authority).permit(:name, :rank, :position, :biography, :status )
end

end
