# frozen_string_literal: true

# An abstract "class" that serves as the base for all models
class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end
