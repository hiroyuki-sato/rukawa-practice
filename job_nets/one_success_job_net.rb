class OneSuccessJobNet < Rukawa::JobNet
  class << self
    def dependencies
      { 
        OneSuccessOne => [],
        OneSuccessTwo => [],
        OneSuccessTree => [OneSuccessOne,OneSuccessTwo]
      }
    end
  end
end
