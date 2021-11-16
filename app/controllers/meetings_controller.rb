require 'pry'

class MeetingsController < ApplicationController
    
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
        meetings = teacher.find_meetings(params[:student_id].to_i)
        meetings.to_json
      end

end

# Refactor line 18 inside of the teacher model to return the same things
# Go into Teacher model
# Create a custom method to find the meetings associated with a particular student
# Call the method in the controller