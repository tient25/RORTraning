class Person

    attr_accessor :name
    attr_accessor :age
    @@count = 0
    def initialize(name, age)
        @name = name
        @age = age    
        @@count += 1
    end

    # CAU 5
    puts "CAU 5"
    def introduce()
      puts "My name is #{@name}, I'm #{@age} years old"
    end

    def self.total_count()
      puts "Total number of people is #{@count}"
    end

    def raiseError()
      raise "Something went wrong"
    end


end

me = Person.new("Tien", 23)

# CAU 6
puts "CAU 6"
puts me.introduce()

# CAU 7
puts "CAU 7"
people = []
20.times do |i|
  a = Person.new("Person#{i}", rand(10..90))
  people.push(a)
end

# CAU 8
puts "CAU 8"
minors = people.select {|person| person.age < 18}
puts "Nhung nguoi duoi 18 tuoi"
minors.each { |person| puts person.name }

# CAU 9
puts "CAU 9"
people.delete_if {|person| person.age > 18}
puts "Nhung nguoi tren 18 tuoi sau khi xoa bot"
people.each {|person| puts person.name}

# CAU 10
puts "CAU 10"
sorted_asc = people.sort {|a, b| a.age <=> b.age}
puts "Danh sach tang dan theo tuoi"
sorted_asc.each {|person| puts person.name}

# CAU 11
puts "CAU 11"
sorted_desc =  people.sort {|a, b| b.age <=> a.age}
puts "Danh sach giam dan theo tuoi"
sorted_desc.each { |person| puts person.name }

# CAU 12
puts "CAU 12"
people.delete_at(10)

#CAU 13
puts "CAU 13"
oldest = people.max_by {|person| person.age}
puts oldest.age

youngest = people.min_by {|person| person.age}
puts youngest.age

# CAU 14
puts "CAU 14"
people.each { |p| p.age += 1 }

# CAU 15
puts "CAU 15"
people.each {|p| puts p.age}

# CAU 16
puts "CAU 16"
people_2 = []
20.times do |i|
  a = Person.new("Person#{i}", rand(10..90))
  people_2.push(a)
end


# CAU 17
puts "CAU 17"
begin
  people[0].raiseError()
  rescue  => e
    puts e.message
end