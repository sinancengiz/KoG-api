class GamesController < ApplicationController
    before_action :set_game, only: [:show, :update, :destroy]

  # GET /games
  def index
    @games = Game.all
    json_response(@games)
  end

  # POST /games
  def create
    @game = Game.create!(game_params)
    @game.users << current_user
    json_response(@game, :created)
  end

  # GET /games/:id
  def show
    json_response(@game)
  end

  # PUT /games/:id
  def update
    @game.update(game_params)
    head :no_content
  end

  # DELETE /games/:id
  def destroy
    @game.destroy
    head :no_content
  end

  private

  def game_params
    # whitelist params
    params.permit(:title).merge(:player_count => 1, :started => false, :finished => false, created_by: current_user.id)
  end

  def set_game
    @game = Game.find(params[:id])
  end
end
