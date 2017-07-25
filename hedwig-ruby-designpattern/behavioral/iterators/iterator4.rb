class MyEnumerable
    include Enumerable
  def initialize
    @array=[]
  end

  def each(&block)
    @array.each(&block)
  end

  def <<(element)
    @array <<element
  end
end


class MyElement
  attr_accessor :name,:value

  def initialize(name,value)
    @name =name
    @value=value
  end

  # this method is important for Enumerable
  def <=>(other)
    value <=>other.value
  end

  def to_s
    "[name: #{name},value: #{value}]"
  end
end

my_enumerable= MyEnumerable.new
el= MyElement.new("n2",4000)
my_enumerable << MyElement.new("n1", 1)
my_enumerable << el
my_enumerable << MyElement.new("n3", 22)
my_enumerable << MyElement.new("n4", 64)

puts "Has n2: " + my_enumerable.include?(el).to_s

puts "All elements have value >= 10: " + (my_enumerable.all? {|e| e.value >= 10}).to_s

puts "Has any element with value >= 2000: " + (my_enumerable.any? {|e| e.value > 2000}).to_s

puts "Display collection: "

my_enumerable.each do |e|
  puts e
end