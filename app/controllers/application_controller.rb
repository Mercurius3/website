class ApplicationController < ActionController::Base
  protect_from_forgery
  
  include Mobylette::RespondToMobileRequests
  mobylette_config do |config|
    config[:fall_back] = :html
    # config[:skip_xhr_requests] = false
    # config[:mobile_user_agents] = proc { %r{iphone|android}i }
    # config[:devices] = {cool_phone: %r{cool\s+phone} }
  end
  
end
