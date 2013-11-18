# Create the cookbook class
class Cookbook

# define the variables inside the cookbook class, including an array for all the recipes.
	def initialize(name)
		@name = name
		@recipes = []
	end

# create a push for new recipes to go into the array within the Cookbook class
	def add_recipe(recipe)
		@recipes << recipe
		# puts "Added #{recipe.ingredients} to the cookbook."
	end

# prints out the each full recipe, 
	def print_cookbook()
		@recipes.each do |recipe| 
			puts recipe.title
		end
	end

# lists all the recipes + their total number of ingredients and steps
	def list_recipe()
		@recipes.each do |recipe|
			puts "The recipe #{recipe.title} has #{recipe.ingredients.length} ingredients and #{recipe.steps.length} steps."
		end
	end

	def recipe_remove(recipe)
		@recipes.delete(recipe)
		puts "Removed #{recipe.title} from the cookbook."
	end

	def sort_course
		@recipes.each do |recipe|
			puts "The recipe #{recipe.title} is a #{recipe.course} course."
		end
	end
end

# Create the cookbook class
class Recipe

# make attributes of the class accessable
	attr_accessor :title, :ingredients, :steps, :course

	def initialize(title, ingredients, steps, course)
		@title = title
		@ingredients = ingredients
		@steps = steps
		@course = course
	end


end


mex_cuisine = Cookbook.new("Mexican Cooking")

burrito = Recipe.new("Bean and Cheese Burrito", ["tortilla", "bean", "cheese"], ["heat beans", "heat tortilla", "place beans in tortilla", "sprinkle cheese on top", "roll up"], "main")
chips_n_salsa = Recipe.new("Chips and Salsa", ["tortilla chips", "Salsa"], ["place chips in bowl", "pour salsa over"], "first")
# puts burrito
# puts chips_n_salsa

mex_cuisine.add_recipe(burrito)
mex_cuisine.add_recipe(chips_n_salsa)
mex_cuisine.print_cookbook
mex_cuisine.list_recipe
mex_cuisine.sort_course
mex_cuisine.recipe_remove(burrito)



