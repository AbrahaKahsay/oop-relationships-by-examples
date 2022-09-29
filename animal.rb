require "./remover.rb"

class Animal
    def initialize(type, number_of_legs, name = "Unknown")
        @id = Random.rand(1..1000)
        @name = name
        @number_of_legs = number_of_legs
        @type = type
        @liked_food = NoFood.new()
    end
  # Add a reusable class using composition 
    def remove_leg
        remover = Remover.new()
        @number_of_legs = remover.decrease(@number_of_legs)
    end

    def speak
      "grrr"
    end

    def id
        @id
    end

    def type
        @type
    end

    def number_of_legs
        @number_of_legs
    end
    
    def name
        @name
    end
    
    def name=(value)
        @name = value
    end

    def likes_food?(food)
        @liked_food.is_liked?(food)
    end
end

# Encapsulation

