# frozen_string_literal: true

# Controls the cities of the application
class CitiesController < ApplicationController
  def index
    @cities = City.all
    @states = State.all
    @selected_state = params[:state_id]

    if @selected_state.present?
      @cities = @cities.where(state_id: @selected_state)
    end
  end
end
