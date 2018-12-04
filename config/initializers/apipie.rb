Apipie.configure do |config|
  config.app_name                = "MicroLog"
  config.api_base_url            = ""
  config.doc_base_url            = "/apipie"
  config.validate                = false
  # set copyright here
  config.copyright               = "&copy; 2018 Rogo"
  config.validate_value          = false
  config.translate               = false
  config.default_locale          = nil
  # where is your API defined?
  config.api_controllers_matcher = "#{Rails.root}/app/controllers/*.rb"
end
