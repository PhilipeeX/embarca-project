# frozen_string_literal: true

# Represents a state in the application.
class State < ApplicationRecord
  has_many :cities
end
