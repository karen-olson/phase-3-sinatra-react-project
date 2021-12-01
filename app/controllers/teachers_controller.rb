class TeachersController < ApplicationController
    get "/teachers" do 
        teachers = Teacher.all 
        teachers.to_json(methods: :students_list)
      end
end