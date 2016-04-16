require 'barometer'
require 'date'

class Fixnum
	def days
		# returns number that represents seconds in a day * N days
		self * 86400
	end
end

# Define method for passing location and displaying weather
def weather_forecast(usr_location)
	tomorrow = Time.now.strftime('%d').to_i + 1
	
	barometer = Barometer.new(usr_location)
	weather = barometer.measure
		
	weather.forecast.each do |forecast|
		what_day = forecast.starts_at.day
		
		if what_day == tomorrow
			day_name = "Tomorrow"
		else
			day_name = forecast.starts_at.strftime('%A')
		end
		
		puts "#{day_name} forecast: #{forecast.icon} with a low of #{forecast.low.f.to_s} and a high of: #{forecast.high.f.to_s}" 
	end
	
end



# Retrieve Location
print "Please enter your location [Zip code]: "
location = gets.chomp.to_s

weather_forecast(location)


