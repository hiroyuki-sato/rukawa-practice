class HelloJobOne < Rukawa::Job
  def run 
    puts "Hello #{self}"
  end 
end

class HelloJobTwo < Rukawa::Job
  def run 
    puts "Hello #{self}"
  end 
end
