# frozen_string_literal: true
class CitiesController < ApplicationController
  def index
    @cities = City.all
  end
end
