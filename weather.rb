require 'barometer'

# Define method for passing location and displaying weather
def user_location(usr_location)
	barometer = Barometer.new(usr_location)
	weather = barometer.measure
	
	puts "Today's forecast: #{weather.current.condition}"
end

# Retrieve Location
print "Please enter your location [Zip code]: "
location = gets.chomp.to_s

user_location(location)


