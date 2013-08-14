# encoding: UTF-8
class UsersController < ApplicationController
	load_and_authorize_resource

	def index
		@users = User.find(:all, :order => "username ASC")
	end

	def show
	end

	def new
	end

	def edit
	end

	def create
		if @user.save
			redirect_to users_path, notice: "Новый пользователь был добавлен."
		else
			render "new"
		end
	end

	def update
		if @user.update_attributes(params[:user])
			redirect_to @user, notice: "Данные пользователя были изменены."
		else
			render action: "edit"
		end
	end

	def destroy
   	@user.destroy
   	redirect_to users_url, notice: "Пользователь был удален."
	end
end
