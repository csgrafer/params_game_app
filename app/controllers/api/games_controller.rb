class Api::GamesController < ApplicationController
  def query_action
    p "*" * 30
    @name = params[:name]
    @job = params[:job]
    p "*" * 30
    render 'query_view.json.jbuilder'
  end

  def name_action
    @name = params[:name].upcase
    if @name[0] == 'S'
      @message = "Congrats! Your name begins with the letter S."
    else @message = "Sorry! Your name does not begin with S, and you will never be cool..."
    end
    render 'name_view.json.jbuilder'
  end

  def game_action
    guess = params[:guess].to_i
    answer = 62
    if guess < answer
      @message = "Sorry, you guessed too low."
    elsif guess > answer
      @message = "Sorry, you guessed too high."
    elsif guess == answer
      @message = "Correct! Great guess."
    end
    render 'game.json.jbuilder'
  end

  def segment_action
    @city = params[:place]
    render 'segment_route.json.jbuilder'
  end

end
