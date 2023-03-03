# your code here

class Stack

    def initialize(limit = nil)
        @stack = []
        @limit = limit
    end

    def push(value)
        raise 'Stack Overflow' if @limit && @stack.length == @limit
        @stack.push(value)
    end

    def pop
        @stack.pop
    end

    def peek
        @stack[@stack.length - 1]
        @stack.last
    end

    def size
        @stack.length
    end

    def empty?
        @stack.empty?
    end

    def full?
        @limit && @stack.length == @limit ? true : false
    end

    def search(value)
        @stack.each_with_index do | item, index |
            return size - index - 1 if item == value
        end
        -1
    end

end