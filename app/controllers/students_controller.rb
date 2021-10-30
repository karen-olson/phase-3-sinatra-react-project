class StudentsController < ApplicationController
    get "/students" do
        students = Student.all
        students.to_json
      end
end