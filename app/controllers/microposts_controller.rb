class MicropostsController < ApplicationController
    before_action :logged_in_user,only:[:create,:destroy]
    before_action :correct_user,   only: :destroy
    
    def create
     @micropost = current_user.microposts.build(micropost_params)
     if @micropost.save
      flash[:success] = "フォームが投稿されました"
      redirect_to root_url
     else
      @feed_items = []
      render 'docs_comm/home'
     end
    end
    
    def show
     @micropost = Micropost.find(params[:id])
     #コメントフォームに必要なインスタンスを作成
     @comment = Comment.new
    end
    
    def destroy
     @micropost.destroy
     flash[:success] = "投稿が削除されました"
     redirect_to request.referrer || root_url
    end
    
   private
    
    def micropost_params
      params.require(:micropost).permit(:content, :sex)
    end
    
    def correct_user
     @micropost = current_user.microposts.find_by(id: params[:id])
     redirect_to root_url if @micropost.nil?
    end
end
