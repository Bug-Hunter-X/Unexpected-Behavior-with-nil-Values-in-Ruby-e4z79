```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def value
    @value || 0 # Default to 0 if @value is nil
  end

  def value=(new_value)
    @value = new_value
  end
end

my_object = MyClass.new(10)
puts my_object.value # => 10

my_object.value = 20
puts my_object.value # => 20

my_object.value = nil
puts my_object.value # => 0

#Improved process_data function
def process_data(data)
  data[:value] = data[:value].to_i # Ensure the value is a number
end

my_hash = {}
process_data(my_hash)
puts my_hash # => {:value=>0}

my_hash[:value] = nil
process_data(my_hash)
puts my_hash # => {:value=>0}
```