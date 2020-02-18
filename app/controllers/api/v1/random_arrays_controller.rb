class Api::V1::RandomArraysController < ApplicationController
  before_action :validate, only: :create
#get all random arrays
  def index
    render json: RandomArray.all
  end
#create an array
  def create
    #it creates a random_array_service  object
    array = RandomArrayService.new(params[:long].to_i)
    #we create a random array object by the generate method from RAS class
    random_array = RandomArray.create(number_set: array.generate.join(','))
    #response
    render json: { id: random_array.id, number_set: random_array.input}
  end

  def show
    #we find the random array with theid provided
    input = RandomArray.find(params[:id]).input
    #it creates a RAS object
    array = RandomArrayService.new
    #response with the method output from the last class before created
    render json: { result: array.output(input) }
  end
end