class Person
	attr_accessor :first_name, :last_name, :age, :cash

	def initialize(first_name, last_name, age)
		@first_name = first_name
		@last_name = last_name
		@age = age
		@cash = 100000
  end
 

  def self.initializer
    new("","",1)
  end

	def get_full_name
		@first_name + " " + @last_name
	end

	def buy_car(fcost)
		@cash = @cash + fcost
		if @cash >= 0
			true
		else
			false
		end
	end	
end