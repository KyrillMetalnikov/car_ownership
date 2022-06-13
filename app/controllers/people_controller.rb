class PeopleController < ApplicationController
  def index
    @people = Person.includes([:cars]).all
    render json: @people.as_json(:include => :cars)
  end  
      
  def show
    @person = Person.includes([:cars]).find(params[:id])
    render json: @person
  end
    
  def new
    @person = Person.new
  end
    
  def create
    @person = Person.new(person_params)
      
    if @person.save
      redirect_to @person
    else
      render :new, status: :unprocessable_entity
    end
  end
    
  def edit
    @person = Person.find(params[:id])
  end
    
  def update
    @person = Person.find(params[:id])
    
    @person.update(person_params_update)
    render json: @person
  end
    
  def destroy
    @person = Person.find(params[:id])
    @person.destroy
    
    redirect_to root_path, status: :see_other
  end
    
  private
    def person_params
      params.permit(:first_name, :last_name, :email)
    end

  private
    def person_params_update
      params.require(:person).permit(:id, :first_name, :last_name, :email)
    end
end
