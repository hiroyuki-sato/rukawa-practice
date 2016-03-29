class SequelJobNet < Rukawa::JobNet
  class << self
    def dependencies
      { 
        SequelJobOne => [],
        SequelJobTwo => [SequelJobOne]
      }
    end
  end
end
