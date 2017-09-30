class StaticPagesController < ApplicationController

  def home
    @currentstatus = Status.order("created_at").last      
  end

  def reservation
  end
    
end
