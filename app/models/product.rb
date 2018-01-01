class Product < ActiveRecord::Base
  belongs_to :owner
  belongs_to :category
end
