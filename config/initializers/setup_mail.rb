 ActionMailer::Base.smtp_settings = {
    :address => "smtp.gmail.com",
    :port => 587,
    :domain => ENV['DOMAIN'],
    :authentication => "plain",
    :user_name => ENV['EMAIL_USER'], #{}"jonathangertigwebsite@gmail.com",
    :password => ENV['EMAIL_PASSWORD'], #"jgw737737.dog",
    :enable_starttls_auto => true
 }
 
 ActionMailer::Base.default_url_options[:host] = ENV['DOMAIN'] if Rails.env.production?