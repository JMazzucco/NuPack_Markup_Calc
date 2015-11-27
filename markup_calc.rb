#get user input
def get_action
	gets.chomp
end

#convert string to an integer or float and check that it is greater than 0. If "material" is passed as the input parameter, check that it is between 1 and 4
def amount_input(input)
  amount = get_action

  if input == "base"
		amount = amount.to_f.round(2)
  elsif input == "workers" || input == "material"
		amount = amount.to_i
  end

	#prompt user to enter a valid number
	if amount <= 0 || (!amount.between?(1,4) && input == "material")
		puts "Please enter a valid number"
		amount = amount_input(input)
	end

	amount
end

#calculate total percentage based on number of workers needed for the job
def num_workers_markup(num_workers)
	0.012 * num_workers
end

#return material markup percentage based on input
def prod_material_markup(material_type)
	if material_type == 1
	 	material_markup = 0.075
	elsif material_type == 2
		material_markup = 0.13
	elsif material_type == 3
		material_markup = 0.02
	else
		material_markup = 0
	end
end

#calculate subtotal price
def flat_markup(base_price)
	base_price *= 1.05
end

#calculate total price
def calc_total(base_plus_flat, workers_markup, material_markup)
	total = base_plus_flat + (base_plus_flat * workers_markup) + (base_plus_flat *material_markup)
  total.round(2)
end

#append total price with a "0" if the price ends at the tenth decimal instead of the hundredth
def format_currency(price)
	if (price * 100) % 10 == 0
		price = price.to_s + "0"
	else
		price = price.to_s
	end
	price
end

#Prompt user for input and assign returned values
puts "Enter initial base price"
base_price = amount_input("base")

puts "Enter the number of people needed to work on this job"
num_workers = amount_input("workers")

puts "Enter one of the following numbers to select the product material\n1 - Pharmaceuticals\n2 - Food\n3 - Electronics\n4 - Other"
material_type = amount_input("material")

#call methods to calculate values
base_plus_flat = flat_markup(base_price)
workers_markup = num_workers_markup(num_workers)
material_markup = prod_material_markup(material_type)
total_price = calc_total(base_plus_flat, workers_markup, material_markup)

formatted_total = format_currency(total_price)

#output total price
puts "------------------"
puts "Total: $" + formatted_total
