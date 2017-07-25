#states.bsh

# Allow an object to alter it's behavior when it's internal state changes.
# The object will appear to change it's class.

# in ruby you can achieve same goal with metaprogramming

# 1. state type and it's implementations

class State
  def handle
  end
end

class MyState1 <State
  def handle
    puts 'handle1'
  end
end

class MyState2 <State
  def handle
    puts 'handle2'
  end
end

class Context
  def set_state(state)

  end
  def request
  end
end

class MyContext <Context
  def state=(state)
    @state=state
  end
  def request
    @state.handle
  end
end

context = MyContext.new

state1 = MyState1.new
state2 = MyState2.new

context.state = state1
context.request

context.state = state2
context.request