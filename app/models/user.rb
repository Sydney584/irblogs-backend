class User < ApplicationRecord
    
    has_many :blogposts, dependent: :destroy
    has_many :comments, dependent: :destroy
end
