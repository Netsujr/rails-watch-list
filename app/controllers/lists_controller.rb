class ListsController < ApplicationController

  def index
    @lists = List.all
    @list = List.new
  end

  def new
    @list = List.new
  end

  def show
    @list = List.find(params[:id])
  end

  def create
    @list = List.new(list_strong_params)
    if @list.save
      redirect_to '/'
    else
      @lists = List.all
      render :index
    end
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy
    redirect_to lists_path
  end

  private

  def list_strong_params
    params.require(:list).permit(:name) # + (:photo?)
  end

end
