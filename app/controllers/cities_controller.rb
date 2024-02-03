# frozen_string_literal: true

# Controls the cities of the application
class CitiesController < ApplicationController
  def index
    @cities = City.all
    @states = State.all
    filter_by_state
    filter_by_city_name
  end

  private

  def filter_by_state
    @selected_state = params[:state_id]
    @cities = @cities.where(state_id: @selected_state) if @selected_state.present?
  end

  def filter_by_city_name
    @cities = @cities.where('name ILIKE ?', "%#{params[:city_name]}%") if params[:city_name].present?
  end
end
