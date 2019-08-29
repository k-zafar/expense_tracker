class Expense < ApplicationRecord
	validates :amount, :description, :user, presence: true
	validates :amount, numericality: true
end
