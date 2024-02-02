# frozen_string_literal: true

FactoryBot.define do
  factory :city do
    name { %w[Curitiba Florianópolis 'Porto Alegre'].sample }
    association :state, factory: :state
  end
end
