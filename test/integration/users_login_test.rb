require 'test_helper'

class UsersLoginTest < ActionDispatch::IntegrationTest
    
def setup
    @user = users(:michael)
end
    
  test "login with invalid information" do
   get home_path
   assert_template 'docs_comm/home'
   post home_path,params:{ session:{ email:"", password:""}}
   assert_template 'docs_comm/home'
   assert_not flash.empty?
   get home_path
   assert flash.empty?
 end
 
 test "login with valid information" do
    get home_path
    post home_path, params:{ session:{ email: @user.email,
                        password: 'password'}}
    assert_redirected_to @user
    follow_redirect!
    assert_template 'users/show'
    assert_select "a[href=?]",home_path,count:0
    assert_select "a[href=?]",logout_path
    assert_select "a[href=?]",user_path(@user)
  end
  
  test "valid signup information" do
    get home_path
    assert_difference 'User.count', 1 do
      post users_path,params: { user:{ name: "Example User",
                        email:"user@example.com",
                        password:       "password",
                        password_confirmation: "password" }}
  end
  follow_redirect!
  assert_template 'users/show'
  assert is_logged_in?
 end 
 
  test "login with valid information followed by logout" do
    get home_path
    post home_path, params: { session: { email:    @user.email,
                                          password: 'password' } }
    assert is_logged_in?
    assert_redirected_to @user
    follow_redirect!
    assert_template 'users/show'
    assert_select "a[href=?]", home_path, count: 0
    assert_select "a[href=?]", logout_path
    assert_select "a[href=?]", user_path(@user)
    delete logout_path
    assert_not is_logged_in?
    assert_redirected_to home_path #Red
    follow_redirect!
    assert_select "a[href=?]", home_path
    assert_select "a[href=?]", logout_path,      count: 0
    assert_select "a[href=?]", user_path(@user), count: 0
  end
end
