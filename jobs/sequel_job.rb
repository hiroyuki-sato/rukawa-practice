require 'sequel'
require 'yaml'

DB = Sequel.connect(YAML.load_file(File.expand_path("../connection.yml",__FILE__)))

class SequelJobOne < Rukawa::Job
 def run
   puts DB[:hello].all
 end
end

class SequelJobTwo < Rukawa::Job
 def run
   puts DB[:hello].count
 end
end
