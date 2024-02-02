# frozen_string_literal: true

# Controls the cities of the application
class CitiesController < ApplicationController
  def index
    @cities = City.all
    @states = State.all

    @cities = @cities.where(state_id: params[:state_id]) if params[:state_id].present?
    @cities = @cities.where('lower(name) LIKE ?', "%#{params[:city_name].downcase}%") if params[:city_name].present?
  end
end
