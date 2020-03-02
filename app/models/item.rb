class Item < ApplicationRecord
	has_many :measurements
	validates :name, presence: true, length: { minimum: 3 }
	validates :photo, presence: true
end
