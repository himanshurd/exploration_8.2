#Extract Class Method
# Step 1: I lein back to my chair and analyze the structure of the code
# Step 2: After analyze I starts extracting behaviors and create different classes by using 
#Extract class Method.
class Bike 
    attr_accessor :color, :price, :weight
    def initialize(color, price, weight)  
        @coclor = color
        @price = price
        @weight = weight  
    end
end

class Cargo 
    def initialize()
        @cargo_contents = []
    end

    def add_cargo(item)
        self.cargo_contents << item
    end
   
    def remove_cargo(item)
        self.cargo_contents.remove(item)
    end
end

class Pannier < Cargo
    MAX_CARGO_ITEMS = 10
    
    def pannier_capacity
        MAX_CARGO_ITEMS
    end
   
    def pannier_remaining_capacity
        MAX_CARGO_ITEMS - self.cargo_contents.size
    end
end

class Rent
    def initialize(rented = false)
        @rented = rented
    end

    def rent!
        self.rented = true
    end
end
