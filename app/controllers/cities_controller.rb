# frozen_string_literal: true

# Controls the cities of the application
class CitiesController < ApplicationController
  def index
    @cities = City.all
  end
end
