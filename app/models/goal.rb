class Goal < ApplicationRecord
  with_options presence: true do
    validates :image
    validates :title         
    validates :content
    validates :deadline
  end
  
  belongs_to :user
  has_one_attached :image

end
