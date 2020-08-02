require 'logger'
require "pry"
module Pivot
  class Logger < Logger
    def initialize(item)
      super
    end
  end
end