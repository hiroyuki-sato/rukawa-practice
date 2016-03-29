class HelloJobNet < Rukawa::JobNet
  class << self
    def dependencies
      { 
        HelloJobOne => [],
        HelloJobTwo => [HelloJobOne]
      }
    end
  end
end
