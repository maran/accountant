# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Accountant::Application.initialize!
Sass::Plugin.options[:style] =:always_update