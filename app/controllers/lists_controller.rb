class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
    @bookmark
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(lists_params)
    @list.save
    redirect_to list_path(@list)
  end

  private

  def lists_params
    params.require(:list).permit(:name)
  end

end
