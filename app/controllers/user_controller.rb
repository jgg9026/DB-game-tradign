class UserController < ApplicationController
  respond_to :html, :json
  def index
    @users=User.all
    #respond_with(@users)
    render :user
  end
  def login
    #byebuyg
    if (params[:email] && params[:password])
      @login=User.login(params[:email],params[:password])
      if @login
        render :login
      else
        render json: "Informacion incorrecta", status: 403
      end
    else
      render json: "Envie parametros", status: 400
    end
  end
end
