class Enrollment < ApplicationRecord
    belongs_to :school_class
    belongs_to :student
end
