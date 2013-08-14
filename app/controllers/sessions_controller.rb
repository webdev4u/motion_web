# encoding: UTF-8
class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by_username(params[:username])
  	if user && user.authenticate(params[:password])
  		session[:user_id] = user.id
  		redirect_to root_url, notice: "Вход успешно выполнен."
  	else
  		flash.now.alert = "Неверное имя пользователя или пароль."
  		render "new"
  	end
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to root_url, notice: "Вы вышли из системы."
  end
end
