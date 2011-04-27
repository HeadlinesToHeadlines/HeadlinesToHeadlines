class DiscussionsController < ApplicationController
  def create
    d = Discussion.create(params[:discussion])
    if d.save
      flash[:notice] = "Argument accepted" 
      
      go_to_current_round
    else
      flash[:error] = "Error creating argument." 
    end
  end
end
