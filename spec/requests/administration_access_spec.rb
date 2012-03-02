require 'spec_helper'

describe 'Administration access' do

  it 'admin page requires authentication' do
    visit admin_path
    current_path.should == login_path
  end

  it 'is accessed by logging in to admin login page' do
    login
    page.should have_link('Logout')
  end

  it 'logs out user when Logout link clicked' do
    login
    visit articles_path
    click_link 'Logout'
    page.should_not have_link('Logout')
    current_path.should == root_path
  end

end
