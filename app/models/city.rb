# frozen_string_literal: true

# Represents a city in the application.
class City < ApplicationRecord
  belongs_to :state
end
