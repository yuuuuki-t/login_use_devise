class ItemsController < ApplicationController
  before_action :move_to_index,except: :index
# index以外のアクションをしようとしたら

  def index
    @items = Item.all
  end
  
  def new
    @item = Item.new
  end

  def create
    Item.create(name: item_params[:name], price: item_params[:price],user_id: current_user.id)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
    # ログインしていないユーザーをindexへ強制的に飛ばす
  end


  private
  def item_params
    params.require(:item).permit(:name,:price)
  end

end