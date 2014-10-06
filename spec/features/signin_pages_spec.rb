require 'rails_helper'

describe "the signin process" do
  it "signs a user in who uses the right password" do
    visit '/users/login'
    user = User.create(:email => 'user@example.com', :password => 'password')
    fill_in 'Email', :with => 'user@example.com'
    fill_in 'Password', :with => 'password'
    click_button 'Log in'
    page.should have_content 'Signed in successfully.'
  end

  it "gives a user an error who uses the wrong password" do
    visit '/users/login'
    user = User.create(:email => 'user@example.com', :password => 'password')
    fill_in 'Email', :with => 'user@example.com'
    fill_in 'Password', :with => 'wrong'
    click_button 'Log in'
    page.should have_content 'Invalid email or password.'
  end
end
