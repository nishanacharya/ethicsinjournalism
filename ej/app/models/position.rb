class Position < ActiveRecord::Base
    belongs_to :assignment
    belongs_to :post
end
