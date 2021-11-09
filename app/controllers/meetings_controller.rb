require 'pry'

class MeetingsController < ApplicationController
    get "/meetings" do 
        meetings = Meeting.all 
        meetings.to_json
      end
    
      post "/meetings" do 
        meeting = Meeting.create(params)
        meeting.to_json
      end
    
      delete "/meetings/:id" do 
        meeting = Meeting.find(params[:id])
        meeting.destroy
        meeting.to_json
      end

      get "/teachers/:id/students/:student_id/meetings" do
        teacher = Teacher.find(params[:id])
        meetings = teacher.meetings.filter{|meeting| meeting[:student_id] == params[:student_id].to_i}
        meetings.to_json
      end


end