class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters,if: :devise_controller?
  # もしdevise_controller（ログイン機能）が実行されたら左のが実行される

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,keys: [:nickname])
    # sign_upするときにkeyとしてnicknameも登録できるようにしますよ
  end
end
