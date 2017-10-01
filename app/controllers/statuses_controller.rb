class StatusesController < ApplicationController
  before_action :authenticate_admin!
    
  def index
    @statuses = Status.all
  end     
    
  def new
  end
    
  def create
    @status = Status.new(status_params)
 
    @status.save
    redirect_to root_path
  end    

private        
  def status_params
    params.require(:status).permit(:mystatus)
  end    
        
end
