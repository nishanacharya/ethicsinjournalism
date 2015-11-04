class Note < ActiveRecord::Base
    belongs_to :post
    belongs_to :user
    belongs_to :assignment
end
