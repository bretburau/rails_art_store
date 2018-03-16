OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '976713067370-8bj39b1b740a027qli2nm0773td5iha6.apps.googleusercontent.com', 'CBc2sqVOTz2Ky66ygH4JYKN7', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end