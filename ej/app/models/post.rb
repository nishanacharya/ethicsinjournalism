class Post < ActiveRecord::Base
	belongs_to :user
    belongs_to :assignment 
    belongs_to :position
    has_many :comments
    has_many :notes
    has_many :likes
end
