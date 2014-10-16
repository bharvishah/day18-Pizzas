class AddDeliciousToPizzas < ActiveRecord::Migration
  def change
    add_column :pizzas, :delicious, :boolean
  end
end
