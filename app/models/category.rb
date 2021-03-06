class Category < ActiveRecord::Base
   has_many :products
   has_many :expenses, :through => :products
   has_many :subcategories, :foreign_key => :parent_id, :class_name => "Category", :dependent => :destroy
end
