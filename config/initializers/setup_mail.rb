## Todo: Security, extract password & username

ActionMailer::Base.smtp_settings = {  
  :address              => "smtp.gmail.com",  
  :port                 => 587,  
  :user_name            => "axelgraff@gmail.com",  
  :password             => "Momodariflo",  
  :authentication       => "plain",  
  :enable_starttls_auto => true  
}