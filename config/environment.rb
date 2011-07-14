# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
RailsSpace::Application.initialize!

DB_STRING_MAX_LENGTH = 255
DB_TEXT_MAX_LENGTH = 40000
HTML_TEXT_FIELD_SIZE = 15

require 'will_paginate'
# require 'acts_as_ferret'

