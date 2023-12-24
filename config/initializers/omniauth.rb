Rails.application.config.middleware.use OmniAuth::Builder do
  # provider :github, Rails.application.credentials.github.dig(:client_id), Rails.application.credentials.github.dig(:secret), scope: "user:email"
end
