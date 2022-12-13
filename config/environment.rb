# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!


ActionMailer::Base.smtp_settings = {
    :user_name => ENV['SENDINBLUE_LOGIN'],
    :password => ENV['SENDINBLUE_PWD'],
    :domain => 'https://classic-racing-school.fly.dev/',
    :address => 'smtp-relay.sendinblue.com',
    :port => 587,
    :authentication => :plain,
    :enable_starttls_auto => true
  }