# frozen_string_literal: true

class Item < ApplicationRecord
  has_many :measurements
  validates :name, presence: true
  validates :photo, presence: true
end
