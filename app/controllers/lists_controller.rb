class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(lists_params)
    @list.save
  end

  private

  def lists_params
    params.require(:list).permit(:name)
  end

end
