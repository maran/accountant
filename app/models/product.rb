class Product < ActiveRecord::Base
    belongs_to :expenses
    belongs_to :categories
end
