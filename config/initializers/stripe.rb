Rails.configuration.stripe = {
    :publishable_key => Rails.application.credentials.stripe[:api_key],
    :secret_key => Rails.application.credentials.stripe[:api_secret]
  }
Stripe.api_key = Rails.configuration.stripe[:secret_key]