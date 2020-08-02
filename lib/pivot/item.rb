require "pry"
module Pivot
  class Item
    attr_accessor :points, :assignee
    attr_reader :name
    @@all = []
    def initialize(item)
      @name = item[:name]
      @assignee = item[:assignee]
      @points = item[:points]
      save
    end
    def save
      @@all << self
    end
    def + (item)
      @points + item.points
    end
    def project_code
      @name.split("-")[0]
    end
    def valid?
      project_code == "EREC" || project_code == "AZR"
    end
  end
end