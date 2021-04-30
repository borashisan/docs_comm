class DocsCommController < ApplicationController
  def home
    if logged_in?
       @micropost = current_user.microposts.build 
       @feed_items = current_user.feed.where(micropost_sex:nil).paginate(page: params[:page]) #
       
       if current_user.sex == "man"
        @feed_items =  current_user.feed.where(micropost_sex:0).or(current_user.feed.where(micropost_sex:nil)).paginate(page: params[:page])
       elsif current_user.sex == "woman"
        @feed_items = current_user.feed.where(micropost_sex:1).or(current_user.feed.where(micropost_sex:nil)).paginate(page: params[:page])
       elsif current_user.sex == "nonsex"
        @feed_items = current_user.feed.where(micropost_sex:2).or(current_user.feed.where(micropost_sex:nil)).paginate(page: params[:page])
       end
    end
  end
    
  
  def create
    user = User.find_by(email:params[:session][:email].downcase)
     if user && user.authenticate(params[:session][:password])
      if user.activated?
       log_in user
       params[:session][:remember_me] == '1' ? remember(user) : forget(user)
       redirect_back_or root_path
      else
       message  = "Account not activated. "
       message += "Check your email for the activation link."
       flash[:warning] = message
       redirect_to root_url
      end
     else
      flash.now[:danger] = 'メールアドレスまたはパスワードが正しくありません' 
      render 'home'
     end
  end
  
  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end
