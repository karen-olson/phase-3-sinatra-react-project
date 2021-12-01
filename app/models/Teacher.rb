class Teacher < ActiveRecord::Base 
    has_many :meetings
    has_many :students, through: :meetings 

    def find_meetings(current_student_id)
        self.meetings.filter{|meeting| meeting[:student_id] == current_student_id}
    end 

    def students_list
        students = self.students.uniq
    end
end
