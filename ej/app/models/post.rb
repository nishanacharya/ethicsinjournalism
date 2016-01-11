class Post < ActiveRecord::Base
    has_many :comments
    has_many :notes
    has_many :positions
    has_many :likes
    belongs_to :user
    belongs_to :assignment 
    accepts_nested_attributes_for :positions
    
    filterrific(
    default_filter_params: { sorted_by: 'created_at_desc' },
    available_filters: [
      :sorted_by,
      :with_position_id,
    ]
    )
  
    scope :sorted_by, lambda { |sort_key|
    }
    
    scope :sorted_by, lambda { |sort_option|
      direction = (sort_option =~ /desc$/) ? 'desc' : 'asc'
      case sort_option.to_s
      when /^name/
        order("LOWER(students.name) #{ direction }")
      when /^email/
        order("LOWER(students.email) #{ direction }")
      when /^country/
        order("LOWER(students.country) #{ direction }")
      when /^registered_at/
        order("LOWER(students.decorated_created_at) #{ direction }")
      else
        raise(ArgumentError, "Invalid sort option: #{ sort_option.inspect }")
      end
    }
    
    scope :with_position_id, lambda { |position_ids|
    }
    
    
    def self.options_for_sorted_by
    [
      ['Author Name', 'name_asc'],
      ['Registration date (newest first)', 'created_at_desc'],
      ['Registration date (oldest first)', 'created_at_asc'],
      ['Country (a-z)', 'country_name_asc']
    ]
  end

end
    
