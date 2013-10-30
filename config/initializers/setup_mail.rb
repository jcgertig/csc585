 ActionMailer::Base.smtp_settings = {
    :address => "smtp.gmail.com",
    :port => 587,
    :domain => "csc585staging.herokuapp.com",
    :authentication => "plain",
    :user_name => "jonathangertigwebsite@gmail.com",
    :password => "jgw737737.dog",
    :enable_starttls_auto => true
 }
 
 ActionMailer::Base.default_url_options[:host] = "csc585staging.herokuapp.com" if Rails.env.production?