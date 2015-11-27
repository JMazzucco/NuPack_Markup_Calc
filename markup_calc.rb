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

	if category.match(/[^a-zA-Z]/) ||category.empty?
		puts "Please enter a valid category"
		prod_category
	end

	category
end

def flat_markup(base_price)
	base_price *= 1.05
end

def num_workers_markup(num_workers)
	0.012 * num_workers
end


puts "Enter initial base price"
base_price = amount_input("price")

puts "Enter the number of people needed to work on this job"
num_workers = amount_input("number")

puts "Enter the product category"
category_name = prod_category


base_plus_flat = flat_markup(base_price)
num_workers_markup(num_workers)


