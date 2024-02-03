# frozen_string_literal: true

# This migration creates a table to store information about states.
class CreateStates < ActiveRecord::Migration[5.2]
  def change
    create_table :states do |t|
      t.string :name

      t.timestamps
    end
  end
end
