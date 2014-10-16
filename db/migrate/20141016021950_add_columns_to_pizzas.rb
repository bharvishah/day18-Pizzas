class AddColumnsToPizzas < ActiveRecord::Migration
  def change
    add_column :pizzas, :toppings, :text
  end
end
