class Post < ActiveRecord::Base
    has_many :comments
    has_many :notes
    has_many :positions
    has_many :likes
    belongs_to :user
    belongs_to :assignment 
    accepts_nested_attributes_for :positions
end
