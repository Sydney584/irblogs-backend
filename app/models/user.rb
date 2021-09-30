class User < ApplicationRecord
    
    has_many :blogposts
    has_many :comments
end
