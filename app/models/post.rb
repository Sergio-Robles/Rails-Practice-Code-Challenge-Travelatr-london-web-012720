class Post < ApplicationRecord
    belongs_to :blogger 
    belongs_to :post
end
