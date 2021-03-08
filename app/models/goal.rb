class Goal < ApplicationRecord
  with_options presence: true do
    validates :title         
    validates :content
    validates :deadline
  end
  
  belongs_to :user

end
