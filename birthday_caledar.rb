#/usr/bin/env ruby

#This is my first attempt at developing a CRUD program in Ruby! It's a birthday calendar.

#Hash with some information using symbols

birthdays = { Peter: "22/01",
	Ingrid: "05/02",
	James: "10/04",
	Arnold: "15/07"	
}

#User input request for CRUD

puts "Please select a below catagory:"
puts "-- Do you want to add a birthday? Type 1"
puts "-- Do you want to view all birthdays? Type 2"
puts "-- Do you want to remove a birthday? Type 3"
puts "-- Do you want to correct a date? Type 4"

selection = gets.chomp.to_i

case selection #use user input in case statement for varied functions
	when 1
		puts "Who's birthday would you like to add?" #adding a person via user input
		person = gets.chomp.capitalize
		if birthdays[person.to_sym].nil?
			puts "What is the date of #{person}'s birthday? (use day/month format)"
			date = gets.chomp.to_s
			birthdays[person.to_sym] = date.to_s
			puts "#{person} has been added to your calendar, their birthday is on #{date}. Remember it!"
		else
			puts "Hmm, we already have en entry for #{person}."
		end		
	when 2
		birthdays.each { |name, date| puts "#{name}: #{date}" }	#loop through existing hash entries	
	when 3
		puts "Who's birthday do you want to remove?" #removing a person through user input
		person = gets.chomp.capitalize
		if birthdays[person.to_sym].nil?
			puts "#{person} is not on the list to remove!"
		else
			birthdays.delete(person.to_sym)
			puts "You have removed #{person} from your birthday calendar!"
		end
	when 4
		puts "Who's birthday did you get wrong?" #updating person birthday through user input
		person = gets.chomp.capitalize
		if birthdays[person.to_sym].nil?
			puts "Hmm, you couldn't even get the person right! Try again."
		else
			puts "Please fill in the correct birth date for #{person}. (use day/month format)"
			date = gets.chomp.to_s
			birthdays[person.to_sym] = date.to_s
			puts "#{person} has been updated!"
		end
	else
		puts "You have not selected a valid entry! Try again." #options 1 - 4 has not been selected through user input
end
			
			
puts birthdays			
			
			
			
			
			
			
			
			
			