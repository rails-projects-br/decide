class SessionController < ApplicationController
  def create
    begin
      @user = User.from_omniauth(request.env['omniauth.auth'])
      session[:user_id] = @user.id
      flash[:success] = "Olá, #{@user.name}."
    rescue
      flash[:danger] = "Erro ao autenticar o usuário."
    end
    redirect_to root_path
  end

  def destroy
    if current_user
      session.delete(:user_id)
      flash[:success] = 'Até logo!'
    end
    redirect_to root_path
  end
end
