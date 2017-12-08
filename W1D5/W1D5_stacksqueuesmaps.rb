class Stack
  def initialize
    @stack = []
  end

  def add(el)
    @stack.push(el)
  end

  def remove
    @stack.pop
  end

  def show
    @stack
  end
end


class Queue
  def initialize
    @queue = []
  end

  def add(el)
    @queue.push(el)
  end

  def remove
    @queue.shift
  end

  def show
    @queue
  end
end

class Map

  def initialize
    @map = []
  end

  def assign(key, value)
    if lookup(key)
      remove(key)
    else
      @map << [key, value]
    end
  end

  def lookup(key)
    @map.each do |arr|
      if arr[0] == key
        return arr[1]
      end
    end
    nil
  end

  def remove(key)
    @map.delete_if {|arr| arr[0] == key}
  end

  def show
    @map
  end

end
