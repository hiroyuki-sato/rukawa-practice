class CommandJobNet < Rukawa::JobNet
  class << self
    def dependencies
      { 
        CommandJobOne => [],
        CommandJobTwo => [CommandJobOne]
      }
    end
  end
end
