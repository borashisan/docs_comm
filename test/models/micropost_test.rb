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
  
  test "content should not be too long" do #google formsのurlの文字数
    #マクロポストが140文字以下かをテストする
    @micropost.content = "a" * 141
    assert_not @micropost.valid?
    @micropost.content = "a" * 89
    assert_not @micropost.valid?
  end
  
  test "micropost validation should accept valid URL" do
    valid_URL = %w[https://forms.office.com/Pages/ResponsePage.aspx?id=KRd49ELnOEO-pvU_PiOEJ9tyuNlmOthNlJ69zJHwC7JUNTJJNUhUUjlVQkpJSTNUQjk3TlE3RDRCRS4u 
                   https://docs.google.com/forms/d/e/1FAIpQLSc4JLl-CpdrmP5DlFjOrtLUJI5CyeU1XWVgbNOJr6NBs0JrWg/viewform]
    valid_URL.each do |valid_URL|
      @micropost.content = valid_URL
      assert @micropost.valid?, "#{valid_URL.inspect} should be valid"
    end
  end
  
  test "order should be most recent first" do
    assert_equal microposts(:most_recent), Micropost.first
  end
end
