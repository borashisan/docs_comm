require 'test_helper'

class MicropostTest < ActiveSupport::TestCase
  def setup
    @user = users(:michael)
    @micropost = @user.microposts.build(content:"https://docs.google.com/forms/d/e/1FAIpQLScRSfR5wbJnr_cJWLun1a-wDNIn4G45unHUyOqvH2nrT-i3aw/viewform?usp=sf_link")
  end
  
  test "should be valid" do
    assert @micropost.valid?
  end
  
  test "user id should be present" do
    @micropost.user_id = nil
    assert_not @micropost.valid?
  end
  
  test "content should be present" do
    #マイクロポストが空欄じゃないかどうかをテストする
    @micropost.content = " "
    #マイクロポストに空欄を代入する
    assert_not @micropost.valid?
    #trueならredを返す
    
  end
  
  #test "content should be 111 characters" do #google formsのurlの文字数
    #マクロポストが111文字ちょうどかをテストする
    #@micropost.content = "a" * 112
    #マイクロポストが112文字
   # assert_not @micropost.valid?
    #trueならredを返す
    #@micropost.content = "a" * 110
   # assert_not @micropost.valid?
  #end
  
  test "order should be most recent first" do
    assert_equal microposts(:most_recent), Micropost.first
  end
end
