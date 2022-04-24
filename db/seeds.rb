# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


vitally = Student.create(first_name: "Vitally", last_name: "Zilber")
my_class = SchoolClass.create(title: "science", room_number: 112)
Enrollment.create(student_id: vitally[:id], school_class_id: my_class[:id])
