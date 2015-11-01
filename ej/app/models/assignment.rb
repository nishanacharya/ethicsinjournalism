class Assignment < ActiveRecord::Base
    has_many :posts
    has_many :positions
    has_many :notes
end
