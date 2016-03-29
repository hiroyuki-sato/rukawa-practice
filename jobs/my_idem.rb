class MyIdemBase < Rukawa::Job
  def run 
  end

  def real_run
  end
  def finished?
  end

end


class MyIdemOne < MyIdemBase
  def finished?
    File.exits?("/tmp/skip")
  end 
  def real_run 
    puts "#{self} OK"
 end
  
end

class MyIdemTwo < MyIdemBase
  def finished?
    true
  end 
  def real_run
    puts "#{self} OK"
  end
end

