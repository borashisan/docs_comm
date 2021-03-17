class DocsCommController < ApplicationController
  def home
    if logged_in?
      redirect_to user_path(current_user)
    end
  end
  
  def create
    user = User.find_by(email:params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
     log_in user
     params[:session][:remember_me] == '1' ? remember(user) : forget(user)
     redirect_back_or user
    else
      #エラーメッセージを作成する
      flash.now[:danger] = 'メールアドレスまたはパスワードが正しくありません' 
      render 'home'
    end
  end
  
  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end
