class Category < ApplicationRecord
	validates :cat_name, uniqueness: { case_sensitive: false }, presence: true
end
