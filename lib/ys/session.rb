module Ys
  class Session
    def self.start(host = 'localhost')
      if %w[ localhost 127.0.0.1 ].include? host
        LocalSession.new
      else
        RemoteSession.new
      end
    end
  end
end
