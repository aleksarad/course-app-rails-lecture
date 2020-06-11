class Student < ApplicationRecord
    has_many :enrollments
    has_many :courses, through: :enrollments

    def course_names
        self.courses.collect {|course| course.name}
    end
end
