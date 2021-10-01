class User < ApplicationRecord

    scope :by_name, ->(name) { where("first_name LIKE ? OR user_name LIKE ?", "%#{name}%", "%#{name}%") }

    def to_s
        "#{first_name} #{user_name}"
      end
    
    has_many :blogposts, dependent: :destroy
    has_many :comments, through: :blogposts
end
