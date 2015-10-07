class GameController < ApplicationController
  respond_to :html, :json
  def show
    @user_games=UserGame.all.sort
    render :game, status: 200
  end
  def show_by_game
    @juegos=UserGame.all.group("game_id").count
  end
  def register_game
    @game=nil
    @user=nil
    if(params[:game_id] && params[:condition])
      @game=Game.find(params[:game_id])
      @user = User.validate_token(request.env['HTTP_AUTHORIZATION'])
      if(@game!= nil && @user!=nil)
        if @user.user_games.create(game: @game, condition: params[:condition])
          @games=@user.games
          puts(@games)
          render :user_game, status: 201
          puts("10")
        else
          render json: "Informacion ivalida", status: 403
        end
      else
        render json: "Usuario o Juego invalido", status: 403
      end
    else
      render json: "Envia parametros", status: 400
    end
  end
end

