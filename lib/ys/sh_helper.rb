require 'pty'
require 'shell'
require 'expect'

module Ys
  module ShHelper
    # exec(command) -> String
    # exec(command) {|read, write, pid ... } -> nil
    def exec(command, &block)
      if block_given?
        PTY.spawn(command, &block)
      else
        Shell.new.system(command)
      end
    end
  end
end
