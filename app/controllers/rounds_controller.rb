class RoundsController < ApplicationController

  before_filter :get_round_id, :only => [:game]

  def new
    @round = Round.new
  end

  def create
    @round = Round.new

    params[:user].each do |u, v|
      if v == "1"
        p "Hello!"
        @round.user_rounds.build(:user_id => u) 
      end
    end

    if @round.save
      redirect_to round_game_path(@round)
    else
      redirect_to root_url
    end
  end

  def game
  end

  private

  def get_round_id
    @round = Round.find(params[:round_id])
  end
end
