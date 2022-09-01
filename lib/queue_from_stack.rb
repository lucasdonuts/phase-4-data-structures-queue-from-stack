require_relative './stack'

class MyQueue
  attr_reader :s1, :s2

  def initialize
    @s1 = Stack.new
    @s2 = Stack.new
  end

  def add(value)
    if s1.empty?
      s1.push(value)
    else
      s2.push(s1.pop) until s1.empty?
      s1.push(value)
      s1.push(s2.pop) until s2.empty?
    end
  end

  def remove
    s1.pop
  end

  def peek
    s1.peek
  end

end