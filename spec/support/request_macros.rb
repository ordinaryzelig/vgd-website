module RequestMacros

  def login
    visit login_path
    fill_in 'Password', with: ENV['AUTH_PASSWORD']
    click_button 'Login'
  end

end

RSpec.configure do |config|
  config.include RequestMacros, type: :request
end
