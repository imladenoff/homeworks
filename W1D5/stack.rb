class Stack
    def initialize
      @stack = [] # create ivar to store stack here!
    end

    def add(el)
      @stack << el # adds an element to the stack
      el
    end

    def remove
      @stack.pop # removes one element from the stack
    end

    def show
      @stack # return a copy of the stack
    end
  end
