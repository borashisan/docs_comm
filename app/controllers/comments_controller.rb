class CommentsController < ApplicationController
  def create
    #コメントを投稿する対象のインスタンス(マイクロポスト)を作成
    @micropost = Micropost.find(params[:micropost_id])
    #buildメソッドを用いることでcommentインスタンスにmicropost_idにセットしてcommentインスタンスを作成
    @comment = @micropost.comments.build(comment_params)
    if @comment.save
        redirect_to @micropost
    else
      @micropost = Micropost.find(params[:micropost_id])
      render 'microposts/show'
    end
  end
  
  def destroy
    #記事(micropost)の情報を取得
    @micropost = Micropost.find(params[:micropost_id])
    #その記事内の削除対象のコメントを探して取得
    @comment = @micropost.comments.find(params[:id])
    if @comment.destroy
        redirect_to micropost_path(@micropost)
    end
  end
  
  private
    def comment_params
        params.require(:comment).permit(:title,:content)
    end
end