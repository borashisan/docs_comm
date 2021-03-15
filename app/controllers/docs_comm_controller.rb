class DocsCommController < ApplicationController
  def home
  end
  
  def create
    user = User.find_by(email:params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
     log_in user
     redirect_to user
    else
      #エラーメッセージを作成する
      flash.now[:danger] = 'メールアドレスまたはパスワードが正しくありません' 
      render 'home'
    end
  end
  
  def destroy
    log_out
    redirect_to root_url
  end
end
