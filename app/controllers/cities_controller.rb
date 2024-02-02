# frozen_string_literal: true

# Controls the cities of the application
class CitiesController < ApplicationController
  def index
    @cities = City.all
    @states = State.all
    @selected_state = params[:state_id]
    @cities = @cities.where(state_id: @selected_state) if @selected_state.present?
    @cities = @cities.where('name ILIKE ?', "%#{params[:city_name]}%") if params[:city_name].present?
  end

end
