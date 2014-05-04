module Communication

  def hello
    puts 'Hello World'
  end

  def bye
    puts 'Bye bye'
  end

end


class Person

  # include Communication
  attr_reader :name 

  def initialize(name)
    @name = name
  end

  def hello
    puts 'Hello World'
  end

  def bye
    puts 'Bye bye'
  end

  def make_baby
    Baby.new("#{name} Jr.")
  end

end

class Baby < Person
  attr_reader :something

  def initialize(name)
    super(name)
    @something = 'blah'
  end

  def hello
    super
    puts 'wa wa wahhhhhh'
  end

end

sam = Person.new('sam')
sam.hello
sam.bye
p sam
p sam.make_baby
puts "*" * 99
baby = Baby.new('baby')
baby.hello
baby.bye
p baby
puts baby