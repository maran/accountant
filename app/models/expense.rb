class Expense < ActiveRecord::Base
   belongs_to :user
   has_many :products
   has_many :categories, :through => :products
end
