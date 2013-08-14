# encoding: UTF-8
class CamcordersController < ApplicationController
  load_and_authorize_resource

  def index
    @camcorders = Camcorder.all()
  end

  def show
    if params[:dt_from].blank?
      params[:dt_from] = Time.now.strftime("%d/%m/%Y 00:00:00")
    end
    if params[:dt_to].blank?
      params[:dt_to] = Time.now.strftime("%d/%m/%Y %H:%M:%S")
    end
    @records = @camcorder.Records.where("event_timestamp >= '#{params[:dt_from]}' AND event_timestamp <= '#{params[:dt_to]}'").order("event_timestamp ASC").page(params[:page])
  end

  def new
  end

  def edit
  end

  def create
    if @camcorder.save
      redirect_to camcorders_path, notice: "Новая камера была добавлена."
    else
      render "new"
    end
  end

  def update
    if @camcorder.update_attributes(params[:camcorder])
      redirect_to camcorders_path, notice: "Данные камеры были изменены."
    else
      render action: "edit"
    end
  end

  def destroy
    @camcorder.destroy
    redirect_to camcorders_path, notice: "Камера была удалена."
  end
end
