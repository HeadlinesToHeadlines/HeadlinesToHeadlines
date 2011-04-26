class DiscussionsController < ApplicationController
  def new
    ur = UserRound.find(params[:user_round])
    @discussion = Discussion.new(:user_round_id => ur.id, :user_id => current_user.id)
  end

  def create
    d = Discussion.create(params[:discussion])
    if d.save
      flash[:notice] = "Argument accepted" 
      
      ur = UserRound.find_by_user_id(current_user.id)
      redirect_to round_game_path(Round.find(ur.round_id)) if ur
    else
      flash[:error] = "Error creating argument." 
    end
  end
end
