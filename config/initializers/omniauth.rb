OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, "GgVR6Caj1yK8knxREM3dQf3jV", "tXWVd3NBq7mGjWQSaftRf9Zz6cLEz0yx2oqecXOtMcwwSPdqdO"
  provider :google_oauth2, "310791623305-csns32dhsdpbp47v8bdult3ouifl4jrj.apps.googleusercontent.com", "3Fo3yTwXn8z-4OA032lTRfM2", {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end
#Google Oauth Client ID/Secret
#310791623305-csns32dhsdpbp47v8bdult3ouifl4jrj.apps.googleusercontent.com
#3Fo3yTwXn8z-4OA032lTRfM2