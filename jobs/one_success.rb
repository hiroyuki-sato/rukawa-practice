class OneSuccessOne < Rukawa::Job
  def run 
    raise RuntimeError,"test"
  end 
end

class OneSuccessTwo < Rukawa::Job
  def run 
    puts "#{self.to_s} OK"
  end 
end

class OneSuccessTree < Rukawa::Job
  set_dependency_type :one_success
  def run 
    puts "#{self.to_s} OK"
  end 
end
