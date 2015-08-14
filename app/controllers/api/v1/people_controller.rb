class Api::V1::PeopleController < ApplicationController

  def index
    render json: Person.all
  end

  def show
    render json: Person.find(params[:id])
  end

  def create
    person = Person.new(person_params)
    if person.save
      render json: person
    else
      render json: person.errors
    end
  end

  private def person_params
    params.require(:person).permit(:name)
  end
end
