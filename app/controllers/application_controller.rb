class ApplicationController < ActionController::Base
  protect_from_forgery  
  helper_method :current_user  
    
  private  
  def current_user  
    @current_user ||= User.find(session[:user_id]) if session[:user_id]  
  end  

  def go_to_current_round
    urs = UserRound.select('*').joins(:round).where(:user_id => current_user.id, 'rounds.finished' => nil, :left_game => nil)
    if urs and !urs.blank?
      round = urs.last.round
      redirect_to round_game_path(round) if round and (round.finished == nil)
    end
  end
end
