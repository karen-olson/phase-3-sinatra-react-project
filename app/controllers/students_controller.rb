class StudentsController < ApplicationController
    get "/students" do
        students = Student.all
        students.to_json
      end

    get "/teachers/:id/students" do
      students = Teacher.find(params[:id]).students.uniq
      students.to_json
    end
end