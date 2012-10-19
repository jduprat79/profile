require 'pp'
require 'Hirb'

Hirb.enable
Hirb::Formatter.dynamic_config['ActiveRecord::Base']

puts "~/.irbrc loaded"