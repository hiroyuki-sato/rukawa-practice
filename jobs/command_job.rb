class AbstractCommandJob < Rukawa::Job
  def exec_command
  end
  def run
    cmd = exec_command
    begin
      r,w = IO.pipe
      pid = spawn(exec_command,:out => w, :err => w)
      w.close
      Process.waitpid(pid)
      unless $?.success?
        raise RuntimeError,"exit status #{$?.to_i}"
      end
    rescue
      Rukawa.logger.error("#{cmd} failed")
      raise
    end
  end
end

class CommandJobOne < AbstractCommandJob
  def exec_command
    "touch /tmp/test"
  end
end

class CommandJobTwo < AbstractCommandJob
  def exec_command
    "touch /tmp/test2"
  end
end
