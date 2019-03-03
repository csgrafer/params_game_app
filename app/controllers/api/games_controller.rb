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
    render 'name_view.json.jbuilder'
  end

end
