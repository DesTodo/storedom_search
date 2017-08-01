class ItemsController < ApplicationController

  def index
    #@items = Item.search(params[:search_term])
    @items = if params[:search_term]
    # LIKE pattern matching expression returns true if the string matches
      Item.where('name LIKE ?', "%#{params[:search_term]}%")
      #Item.where('description LIKE ?', "%#{params[:search_term]}%")
    else
      Item.all
    end
  end

  def show
    @item = Item.find(params[:id].to_i)
  end

  private

  def item_params
  params.require(:item).permit(:name, :description, :image_url, :search_term)
end
end
