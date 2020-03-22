# frozen_string_literal: true

class User < ApplicationRecord
  has_many :measurements, dependent: :destroy
  validates :name, presence: true, length: { minimum: 3 }, uniqueness: true
end
