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

end
