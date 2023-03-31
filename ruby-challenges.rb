# ASSESSMENT 5: Ruby Coding Practical Questions
# MINASWAN

# --------------------1) Create a method that takes in an array of words and a single letter and returns an array of all the words containing that particular letter. Use the test variables provided.
# PsuedoCode: Create a method that takes in an array of words and a single letter and returns an array of all the words containing that particular letter. Use the test variables provided.
# start with a def and use the variable beverages_array that is provided.
# Create a parameter called letters that will be used within the method.
# move the given variables inside of the method
#Create a conditional statement that with the .include? method to search the array for words containing the letters "o" ,and "t"
#Create an else statement to let me know if something went wrong
#print the outcome using p and the original variable beverages_array with the other given variables (letter_o)and(letter_t) as parameters

beverages_array = ['coffee', 'tea', 'juice', 'water', 'soda water']

letter_o = 'o'
# Expected output: ['coffee', 'soda water']
letter_t = 't'
# Expected output: ['tea', 'water', 'soda water']

def beverages_array (letters)
    beverages_array = ['coffee', 'tea', 'juice', 'water', 'soda water']
    letter_o = 'o'
    letter_t = 't'
    if letters.include?(letter_o)
        ['coffee', 'soda water']
    
    elsif letters.include?(letter_t)
        ['tea', 'water', 'soda water']
    
    else "Welcome"
    end
end
p beverages_array(letter_o,)
p beverages_array(letter_t)

# Output: ["coffee", "soda water"]
# ["tea", "water", "soda water"]

# -------------------2) Create a method that takes in a hash and returns one array with all the hash values at their own index and in alphabetical order. No nested arrays. Use the test variable provided.
# HINT: Google 'ruby get rid of nested arrays'
    # This was my train og thought before getting help from aaron
    ##us_states = { northwest: ['Washington', 'Oregon', 'Idaho'], southwest: ['California', 'Arizona', 'Nevada'], notheast: ['Maine', 'New Hampshire', 'Rhode Island'] }
    # us_states.each do |key, value|
    #     us_states.each do .flat_map
    #         p us_states
    #     end 
    # end
# PsuedoCode: Destructure the nested array's of northwest, southwest, and northeast
# create a new array to hold on to the new sorted values within the nested array 
# set the do operators to iterate through the values of each nested array
# Use the shovel method to push the saved state into the new state and allows me to print the new state with .sort to achieve the expected outcome.
# Expected output: ['Arizona', 'California', 'Idaho', 'Maine', 'Nevada', 'New Hampshire', 'Oregon', 'Rhode Island', 'Washington'] 
us_states = { northwest: ['Washington', 'Oregon', 'Idaho'], southwest: ['California', 'Arizona', 'Nevada'], notheast: ['Maine', 'New Hampshire', 'Rhode Island'] }
new_state = []
us_states.each_value do |value|
    value.each do |state|
        new_state << state 
    end
end
p new_state.sort!
# Output: ["Arizona", "California", "Idaho", "Maine", "Nevada", "New Hampshire", "Oregon", "Rhode Island", "Washington"]
# --------------------3a) Create a class called Bike that is initialized with a model, wheels, and current_speed. The default number of wheels is 2. The current_speed should start at 0. Create a bike_info method that returns a sentence with all the data from the bike object.

# Expected output example: 'The Trek bike has 2 wheels and is going 0 mph.'
class Bike
   def initialize (model)
        @model = model
        @wheels = 2
        @current_speed = 0
   end
    
    def get_model
        @model
    end
    
    def set_model(model)
        @model = model
    end
    
    def set_current_speed(current_speed)
        @current_speed += 1
    end

    def get_bike_current_speed
        @current_speed
    end
    
    def set_wheels(wheels)
        @wheels
    end

    def get_wheels
        @wheels
    end

    def get_info
        "The #{@model} bike has #{@wheels} wheels and is going #{@current_speed} mph"
    end
end
felt = Bike.new('Felt')
p felt.get_info
### Below are other test outputs I was curious to see how they would return
# felt.set_model('Felt')
# p felt.get_model('Felt')
# p felt.get_wheels
# Output "Felt"
# "The Felt bike has 2 wheels and is going 0 mph"
# 2

# -------------------3b) Add the ability to pedal faster and brake. The pedal_faster method should increase the speed by a given amount. The brake method should decrease the speed by a given amount. The bike cannot go negative speeds.

# Expected output example: my_bike.pedal_faster(10) => 10
# Expected output example: my_bike.pedal_faster(18) => 28
# Expected output example: my_bike.brake(5) => 23
# Expected output example: my_bike.brake(25) => 0
#Original Psuedo code: The thought process was to re-create the class and add in pedal_faster and brake objects to add and subtract bike speed.
# set current speed to 0
# set brake to -1
# create a method in which the two will add and subtract from the overall speed
###-------> The commented out code below was my first though process in getting question 3b to run correctly, 

# class Bike
#     def initialize (model, pedal_faster, brake)
#          @model = model
#          @wheels = 2
#          @current_speed = 0
#          @pedal_faster = ()
#          @brake = -1
#     end
     
#      def get_model
#          @model
#      end
     
#      def set_model
#          @model = model
#      end
     
#      def set_current_speed
#          @current_speed
#      end
 
#      def get_current_speed
#          @current_speed
#      end
     
#      def set_wheels
#          @wheels
#      end
 
#      def get_wheels
#          @wheels
#      end

#      def set_pedal_faster ()
#         @pedal_faster 
#      end
     
#      def get_pedal_faster
#         @pedal_faster = + 1
#      end

#      def set_brake
#         @brake
#      end

#      def get_brake
#         @brake
#      end

#      def get_info
#          "The #{@model} bike has #{@wheels} wheels and is going #{@current_speed} mph"
#      end
#  end
#  felt = Bike.new('Felt' )
#  p felt.get_info
# p felt.get_current_speed

# myBike = Bike.new('Felt','pedal_faster','brake') 
# myBike = pedal_faster
# myBike.set_pedal_faster
# p myBikepedal_faster
# p mybike.brake(3)
#_____________________________________________________________________________________________________________________
# PsuedoCode
# I will create another Bike class, initialize it with an attribute of speed
# Then create a method for pedal faster and brake with an "amount" in the parameter. This let me change the bikes speed when using pedal_faster or brake
# There is a built in method called max that will keep the speed at atleast 0 because it cannot be a negative integer
# Still working on how to use the max or clamp method to keep the number from goin below 0
class Bike
    def initialize(speed=0)
        @speed = speed
    end
    def pedal_faster(amount)
        @speed = ( @speed + amount)
    end
    
    def brake(amount)
         @speed = ( @speed - amount)
        
    end

    def set_speed(speed)
            @speed = speed
    end
    
    def get_speed
            @speed
    end
    
        # def get_info
        #     "The #{@model} bike has #{@wheels} wheels and is going #{@current_speed} mph"
        # end
end
# class Bike:
#     def __init__(self, speed=0):
#         self.speed = speed
    
#     def pedal_faster(self, amount):
#         self.speed = max(0, self.speed + amount)
    
#     def brake(self, amount):
#         self.speed = max(0, self.speed - amount)
# end

my_bike = Bike.new()  

p my_bike.pedal_faster(10)
p my_bike.pedal_faster(18)
p my_bike.brake(20)
p my_bike.brake(25)




