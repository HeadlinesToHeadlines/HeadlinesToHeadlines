class RoundsController < ApplicationController

  before_filter :get_round_id, :only => [:game, :leave_game]

  def new
    @round = Round.new
  end

  def leave_game
  end

  def create
    @round = Round.new

    params[:user].each do |u, v|
      @round.user_rounds.build(:user_id => u) if v == "1"
    end

    if @round.save
      redirect_to round_game_path(@round)
    else
      redirect_to root_url
    end
  end

  def game

  end

  def index
    if current_user
      ur = UserRound.find_by_user_id(current_user.id)
      redirect_to round_game_path(Round.find(ur.round_id)) if ur
    end
  end

  private

  def get_round_id
    @round = Round.find(params[:round_id])
  end
end
