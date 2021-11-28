class Post < ActiveRecord::Base
    validates :title, presence: true
    #the content is at least 100 characters long.
    validates :content, length: {minimum: 100}
    validates :category, inclusion: { in: %w(Fiction  Non-Fiction),
        message: "%{value} is not a valid size" }
end
