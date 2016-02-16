require 'weatherboy'
puts "What is your zip code?"
location = gets
weatherboy = Weatherboy.new(location)   #I think this is creating a new object

condition = weatherboy.current
puts condition.temp_f
puts condition.weather

future = weatherboy.forecasts   #I think I should be able to use the same object since it's the same location?

future.each do |future| #Loop through each future
    puts  "#{future.title} the weather will be #{future.conditions} with a temperature of #{future.high_f}"
end


