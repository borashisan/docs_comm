class MicropostsController < ApplicationController
    before_action :logged_in_user,only:[:create,:destroy]
    def create
    @micropost = current_user.microposts.build(micropost_params)
     if @micropost.save
        flash[:success] = "フォームが投稿されました"
        redirect_to root_url
     else
        render 'docs_comm/home' #どこをレンダリングさせるべきかわかっていない
     end
    end
    
    
    def destroy
    end
    
    def micropost_params
        params.require(:micropost).permit(:content)
    end
end
