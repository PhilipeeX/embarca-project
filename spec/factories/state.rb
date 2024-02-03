# frozen_string_literal: true

FactoryBot.define do
  factory :state do
    name { %w[Paraná 'Santa Catarina' 'Rio Grande do Sul'].sample }
  end
end
