class Position < ActiveRecord::Base
    belongs_to :assignment
    has_many :posts
end
