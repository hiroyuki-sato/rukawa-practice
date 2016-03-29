require 'fileutils'
class SkipJobOne < Rukawa::Job
  SKIP_FILE = "/tmp/skip"
  add_skip_rule -> (job){ File.exists?(SKIP_FILE) }
  def run
#    puts "touch /tmp/skip for skip this job"
#    raise RuntimeError, "test"
    FileUtils.touch(SKIP_FILE)
  end
end


class SkipJobTwo < Rukawa::Job
  def run
    puts "#{self} OK"
  end
end
