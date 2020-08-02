require "pry"
module Pivot
  class Person
    attr_accessor :points
    attr_reader :last_name, :first_name, :email, :items
    @@all = []
    def initialize(item)
      @first_name = item[:first_name]
      @last_name= item[:last_name]
      @email = item[:email]
      @items = []
      save
    end
    def save
      @@all << self
    end
    def add_item(item)
      item.assignee = @email
      @items << item
      logger = Logger.new($stdout)
      logger.info { "item added" }
    end
  end
end