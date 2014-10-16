class PizzasController < ApplicationController

  def index
    @pizzas = Pizza.all
  end

  def show
    @pizza = Pizza.find(params[:id])
  end

  # GET /pizzas/new
  def new
    @pizza = Pizza.new
  end

  # GET /pizzas/1/edit
  def edit
    @pizza = Pizza.find(params[:id])

  end


  def create
    @pizza = Pizza.new(pizza_params)
    if @pizza.save
      redirect_to pizzas_path, notice: "Pizza created!"
    else
       #validated
      render :new
    end


  end

  # PATCH/PUT /pizzas/1
  # PATCH/PUT /pizzas/1.json
  def update
    @pizza = Pizza.find(params[:id])
    if @pizza.update(pizza_params)
      redirect_to @pizza, notice: "Pizza Updated!"
    else
      # taco is invalid
      render :edit
    end
  end

  # DELETE /pizzas/1
  # DELETE /pizzas/1.json
  def destroy
    @pizza = Pizza.find(params[:id])
    @pizza.destroy
    redirect_to pizzas_path
  end


    # Never trust parameters from the scary internet, only allow the white list through.
    def pizza_params
      params.require(:pizza).permit(:name, :ingredients, :toppings, :delicious)
    end
end
