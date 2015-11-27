def amount_input(amount_type)
	amount = gets.chomp
	amount = amount.to_f.round(2) if amount_type == "price"
	amount = amount.to_i if amount_type == "number"

	if amount <= 0
		puts "Please enter a valid " + amount_type
		amount_input(amount_type)
	end

	amount
end

def prod_category
	category = gets.chomp

	if category.match(/[^a-zA-Z]/)
		puts "Please enter a valid category"
		prod_category
	end

	category
end


puts "Enter initial base price"
amount_input("price")

puts "Enter the number of people needed to work on this job"
amount_input("number")

puts "Enter the product category"
prod_category