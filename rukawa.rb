
$LOAD_PATH.push File.expand_path("../lib",__FILE__)
require 'custom_lib'

Rukawa.configure do |c|
  c.log_file = STDOUT
end

puts Rukawa.config.log_file
