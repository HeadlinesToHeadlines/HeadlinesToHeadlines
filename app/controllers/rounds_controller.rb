class RoundsController < ApplicationController
  def new
    @round = Round.new
  end

  def create
    @round = Round.create(params[:round])
    if @round.save
      redirect_to :action => :game
    else
      redirect_to root_url
    end
  end
end
