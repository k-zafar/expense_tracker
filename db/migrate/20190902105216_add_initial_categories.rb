class AddInitialCategories < ActiveRecord::Migration[5.2]
  def up
  	Category.create(cat_name: "General Expense")
  	Category.create(cat_name: "Kitchen")
  	Category.create(cat_name: "Misc")
  end

  def down	
  	Category.delete_all
  end
end
