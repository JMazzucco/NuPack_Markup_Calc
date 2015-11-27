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

def flat_markup(base_price)
	base_price *= 1.05
end

def num_workers_markup(num_workers)
	0.012 * num_workers
end

def prod_material_markup(material_name)
	if material_name == 1
	 	material_markup = 0.075
	elsif material_name == 2
		material_markup = 0.13
	elsif material_name == 3
		material_markup = 0.02
	else
		material_markup = 0
	end
end

def calc_total(base_plus_flat, workers_markup, material_markup)
	total = base_plus_flat + (base_plus_flat * workers_markup) + (base_plus_flat *material_markup)
  total.round(2)
end

puts "Enter initial base price"
base_price = amount_input("price")

puts "Enter the number of people needed to work on this job"
num_workers = amount_input("number")

puts "Enter one of the following numbers to select the product material\n1 - Pharmaceuticals\n2 - Food\n3 - Electronics\n4 - Other"
material_name = amount_input("number")


base_plus_flat = flat_markup(base_price)
workers_markup = num_workers_markup(num_workers)
material_markup = prod_material_markup(material_name)
total_price = calc_total(base_plus_flat, workers_markup, material_markup)

#output total price
puts "------------------"
puts "Total: $" + total_price.to_s
