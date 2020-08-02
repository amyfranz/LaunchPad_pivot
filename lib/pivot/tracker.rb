module Pivot
  class Tracker
    def self.count(items)
      items.count
    end
    def self.item_for(items, email)
      items.reverse.find{| i | i[:assignee] == email}
    end
    def self.pivoted?(items, email)
      attendee = items.find{| i | i[:assignee] == email}
      attendee ? true : false
    end
    def self.total_points(items, assignee = nil)
      points = 0
      pivoted_items = assignee ? items.select{|i| i[:assignee] == assignee[:assignee]} : items.reverse.uniq{|i| i[:assignee]}
      pivoted_items.each{ |i| points += i[:points]}  
      points
    end
    def self.unique_assignees(items)
      items.uniq{|i| i[:assignee]}
    end
  end
end

