# frozen_string_literal: true

# A database migration to create the 'cities' table.
class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.references :state, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
