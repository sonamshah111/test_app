class User < ApplicationRecord
  validates :username, presence: true, 
                       uniqueness: { case_sensitive: false }, 
                       length: { minimum: 3, maximum: 25 }  
  VALID_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/                    
  validates :email, presence: true, 
                    uniqueness: { case_sensitive: false },  
                    length: { minimum: 3, maximum: 105 },
                    format: { with: VALID_REGEX }
	has_many :articles
end
