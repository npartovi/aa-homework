class Stack
  def initialize
    @stack = []
  end

  def add(el)
    @stack << el
    el

  end

  def remove
    @stack.pop
  end

  def show
    @stack.dup
  end
end



class Queue
  def initialize
    @queue = []

  end

  def enqueue(el)
    @enqueue << el
    el

  end

  def dequeue
    @enqueue.shift

  end

  def show
    @queue.dup
  end
end


class Map

  def initialize
    @map = []

  end

  def assign(key, value)
    pair_idx = @map.index { |pair| pair[0] == key }

    if pair_idx
      @map[pair_idx][1] = value
    else
      @map << [key, value]
    end

    [key, value]

  end

  def lookup(key)

    @map.each {|pair| return pair[1] if pair[0] == key}
   
  end

  def remove(key)

    @map.reject! {|pair| pair[0] == key}

   
  end

  def show

    deep_dup(@map)
  
  end


  def deep_dup(arr)

    arr.map do |el|
      if el.is_a?(Array)
        deep_dup(arr)
      else
        el
      end
    end
    
  end

end