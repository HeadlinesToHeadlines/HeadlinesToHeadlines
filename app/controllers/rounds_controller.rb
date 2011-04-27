class RoundsController < ApplicationController

  before_filter :get_round_id, :only => [:game, :play, :finish]

  def new
    @round = Round.new
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
    @headlines = Headline.all
    @round.update_attribute(:judge_id, @round.user_rounds.shuffle.first.user_id) unless @round.judge_id
    @round.update_attribute(:topic, Round.adjectives.shuffle.first) unless @round.topic
    @judge = User.find(@round.judge_id)
    @user_round = @round.user_rounds.where(:user_id => current_user).first
    if @user_round.headlines.blank?
      6.times do |i|
        @user_round.headlines << Headline.all.shuffle.first
      end
      @user_round.save

    end
  end

  def index
    if current_user
      go_to_current_round
    end
  end

  def play
    argument = params[:user_round][:argument]
    played_headline = params[:user_round][:played_headline]
    user_round = params[:user_round][:user_round]

    title = Headline.find(played_headline.to_i).title

    p "Argument: #{argument}"
    p "Title: #{title}"

    ur = UserRound.find(user_round.to_i)
    ur.update_attributes(:argument => argument, :played_headline => title)

    redirect_to :action => :game
  end

  def winner
    ur = UserRound.find(params[:round_id])
    ur.round.update_attribute(:winner_id, ur.id)
    ur.user.score += 1
    ur.user.save
    redirect_to "/rounds/#{ur.round.id}/game"
  end

  def finish
    @round.update_attribute(:finished, true)
    redirect_to root_url
  end

  def leave_game
    ur = UserRound.find(params[:round_id])
    ur.update_attribute(:left_game, true)
    redirect_to root_url
  end

  private

  def get_round_id
    @round = Round.find(params[:round_id])
  end
end
