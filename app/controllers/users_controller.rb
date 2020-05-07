class UsersController < ApplicationController
  def show
    # @items = Item.where(user_id: current_user.id)
    # user_idとcurrent_user_idが同じものを検索してくる

    @user = User.find(current_user.id)
    # userの中なのでitemという変数を使うのは違和感があるので書き換える。
    # アソシエーションを定義したのでuserを遡りitemを検索できる
  end

end