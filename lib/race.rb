require_relative 'car'

class Race
    attr_accessor :cars
	def initialize
        
        @cars = []
        car1 = Car.new
        car2 = Car.new
        @cars << car1 << car2
	    @cars[0].speed = rand(1..100)
	    @cars[1].speed = rand(1..100)
	end

	def winner 
   		if @cars[0].speed > @cars[1].speed
           @cars[0]
        else
        	@cars[1]
        end
	end

	def loser
		if @cars[0].speed < @cars[1].speed
           @cars[0]
        else
        	@cars[1]
        end
	end
end
  #write Race class code here
