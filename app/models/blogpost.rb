class Blogpost < ApplicationRecord


  def summary
    "#{title}"
  end
  
  belongs_to :user
  has_many :comments, dependent: :destroy
end
