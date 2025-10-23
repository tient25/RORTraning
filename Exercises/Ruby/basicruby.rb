class Person

    attr_accessor :name
    attr_accessor :age
    @@count = 0
    def initialize(name, age)
        @name = name
        @age = age    
        @@count += 1
    end

    def introduce()
      puts "My name is #{@name}, I'm #{@age} years old"
    end

    def self.count()
      puts "Total number of people is #{@count}"
    end



end

me = Person.new("Tien", 23)

# CAU 6
puts me.introduce()

# CAU 7
people = []
20.times do |i|
  randomAge = rand(10..90)
  a = Person.new("Person#{i}", randomAge)
  people.push(a)
end



