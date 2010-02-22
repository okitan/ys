module Ys
  class RemoteSession
    include SSHHelper
    
    def initialize(host, opts = {})
      @host, @opts = host, opts
    end
  end
end
