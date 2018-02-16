class Stack

    def initialize
      @stack = []
    end

    def add(el)
      @stack << el

    end

    def remove
      @stack.pop
    end

    def show
      @stack.dup
    end
end

new_stack = Stack.new
new_stack.add(3)
new_stack.add(4)
new_stack.add(5)
new_stack.show



