
$LOAD_PATH.push File.expand_path("../lib",__FILE__)
require 'custom_lib'

Rukawa.configure do |c|
  c.log_file = STDOUT
#  c.concurrency = 5
#  c.graph.rankdir     = "LR"
#  c.graph.size        = TODO
#  c.graph.rotate      = TODO
#  c.graph.ranksep     = TODO
#  c.graph.nodesep     = TODO
#  c.graph.concentrate = TODO
#  c.graph.node.shape  = TODO
#  c.graph.node.style  = TODO
end

puts Rukawa.config.log_file
