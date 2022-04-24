class Student < ApplicationRecord
    has_many :enrollments
    has_many :school_classes, through: :enrollments
                              

end
