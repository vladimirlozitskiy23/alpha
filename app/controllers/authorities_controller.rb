class AuthoritiesController < ApplicationController

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

def authority_params
  params.require(:authority).permit(:name, :rank, :position, :biography, :status )
end

end
