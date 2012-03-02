module RequestMacros

  def login
    page.driver.browser.basic_authorize(ENV['AUTH_NAME'], ENV['AUTH_PASSWORD'])
  end

end

RSpec.configure do |config|
  config.include RequestMacros, type: :request
end
