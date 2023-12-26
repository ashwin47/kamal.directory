Rails.application.config.middleware.use OmniAuth::Builder do
  if Rails.env.production?
    provider :github, ENV["GITHUB_CLIENT_ID"], ENV["GITHUB_SECRET"], scope: "user:email"
  else
    provider :github, ENV["GITHUB_CLIENT_ID_DEV"], ENV["GITHUB_SECRET_DEV"], scope: "user:email"
  end
end
