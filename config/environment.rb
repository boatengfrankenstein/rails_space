# Load the rails application
require File.expand_path('../application', __FILE__)

DB_STRING_MAX_LENGTH = 255
DB_TEXT_MAX_LENGTH = 40000
HTML_TEXT_FIELD_SIZE = 15

# Initialize the rails application
RailsSpace::Application.initialize!


require 'will_paginate'
# require 'acts_as_ferret'

ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :address => "smtp.dslextreme.com",
  :port => 25,
  :domain => "railsspace.com"
}

