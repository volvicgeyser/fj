class Job < ActiveRecord::Base
    validates :location, length:{maximum:20}
    scope :searched, ->(search) {
        where("location like ? or category like ? or term like ? or office_location like ? or emp_pattern like ? ", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
    }
end
