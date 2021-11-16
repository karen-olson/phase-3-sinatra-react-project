require 'faker'

puts "🌱 Seeding spices..."

Teacher.destroy_all
Student.destroy_all
Meeting.destroy_all

slp = Teacher.create(first_name: "Karen", last_name: "Olson", specialty: "Speech Therapist")
sw = Teacher.create(first_name: "Jill", last_name: "Eckhout", specialty: "Social Worker")
psych = Teacher.create(first_name: "Liz", last_name: "Smith", specialty: "Psychologist")
special_ed_teacher = Teacher.create(first_name: "Amy", last_name: "Rambo", specialty: "Special Education")
ot = Teacher.create(first_name: "Siri", last_name: "Marsh", specialty: "Occupational Therapist")

10.times do 
    Student.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, grade: rand(1...5))
end

150.times do 
    Meeting.create(student_id: Student.all.sample.id, teacher_id: Teacher.all.sample.id, duration: [15, 30, 45, 60].sample, notes: Faker::Quote.yoda)
end


puts "✅ Done seeding!"
