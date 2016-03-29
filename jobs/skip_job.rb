require 'fileutils'
class SkipJobBase < Rukawa::Job
  set_dependency_type :all_success_or_skipped
end

class SkipJobOne < SkipJobBase
  SKIP_FILE = "/tmp/skip"
  add_skip_rule -> (job){ File.exists?(SKIP_FILE) }
  def run
    FileUtils.touch(SKIP_FILE)
  end
end


class SkipJobTwo < SkipJobBase
  def run
    puts "#{self} OK"
  end
end
