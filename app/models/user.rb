class User < ApplicationRecord
	has_many :measurements
	validates :name, presence: true, length: { minimum: 3 }, uniqueness: true
end
