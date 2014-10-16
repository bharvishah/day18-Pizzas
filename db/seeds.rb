# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Pizza.create([{name: 'dominoes pizza', ingredients: 'Flour,Oil,water', delicious: false, toppings: 'bellpeppers, sausage'},
              {name: 'veggie pizza', ingredients: 'yeast,oil, flour', delicious: true, toppings: 'mushrooms, onions'},
              {name: 'papajohns pizza', ingredients: 'flour,yeast,raising agent', delicious: true, toppings: 'mushrooms, bellpeppers'},
              {name: 'veg-delight pizza', ingredients: 'all-purpose flour,yeast,water', delicious: true, toppings: 'olives, Jalapeneos'},
              {name: 'PizzaHut pizza', ingredients: 'unique flour, preservatives', delicious: false, toppings: 'pineapple, jalapeneos'}])
