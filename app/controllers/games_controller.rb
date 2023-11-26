class GamesController < ApplicationController
  def index
  end

  def new
    @game = Game.new
  end

  def show
    @game = Game.find(params[:id])
  end

  def create
    @game = CreateGameService.call(game_params)

    redirect_to @game
  end

  private

  def game_params
    params.require(:game).permit(:name, :participant_names)
  end
end
