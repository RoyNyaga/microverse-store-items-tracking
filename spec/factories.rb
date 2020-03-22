# frozen_string_literal: true

require 'factory_bot'

FactoryBot.define do
  factory :item do
    name { 'photo-one' }
    photo { 'this is phot link' }
  end
end
