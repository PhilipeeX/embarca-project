# frozen_string_literal: true

# Controls the main states of the application
class StatesController < ApplicationController
  def index
    @states = State.all
  end
end
