class CarsController < ApplicationController
    def index
      @cars = Car.all
      render json: @cars
    end
    
    def show
      @car = Car.find(params[:id])
    end
  
    def new
      @car = Car.new
    end
  
    def create
      @car = Car.new(car_params)
    
      if @car.save
        render json: @car
      else
        render :new, status: :unprocessable_entity
      end
    end
  
    def edit
      @car = Car.find(params[:id])
    end
  
    def update
      @car = Car.find(params[:id])
  
      @car.update(car_params_update)
      render json: @car
    end
  
    def destroy
      @car = Car.find(params[:id])
      @car.destroy
  
      redirect_to root_path, status: :see_other
    end
  
    private
      def car_params
        params.permit(:year, :make, :model, :price, :person_id, :id, :car)
      end

    private
      def car_params_update
        params.require(:car).permit(:year, :make, :model, :price, :person_id, :index)
      end
  end
  