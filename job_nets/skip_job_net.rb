class SkipJobNet < Rukawa::JobNet
  class << self
    def dependencies
      { 
        SkipJobOne => [],
        SkipJobTwo => [SkipJobOne]
      }
    end
  end
end
