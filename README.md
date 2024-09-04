# Students and Courses Instructions

Hello world! 

## Setup

* Fork this Repository
* Clone YOUR fork
* Compete the activity below
* Push your solution to your fork
* Submit a pull request from your repository to the turingschool-examples repository
  * Make sure to put your name in your PR!

## Iteration 1

Use TDD to create a `Student` class that responds to the following interaction pattern:

```ruby
pry(main)> require './lib/student'
# => true

pry(main)> student = Student.new({name: "Morgan", age: 21})    
# => #<Student:0x00007fe196b0c050...>

pry(main)> student.name
# => "Morgan"

pry(main)> student.age
# => 21

pry(main)> student.scores
# => []

pry(main)> student.log_score(89)

pry(main)> student.log_score(78)    

pry(main)> student.scores
# => [89, 78]

pry(main)> student.grade # Average of all the scores
# => 83.5
```

## Iteration 2

Use TDD to create a `Course` class that responds to the following interaction pattern:

```ruby
pry(main)> require './lib/course'
# => true

pry(main)> require './lib/student'
# => true

pry(main)> course = Course.new("Calculus", 2)    
# => #<Course:0x00007fa0a69be328...>

pry(main)> course.name
# => "Calculus"

pry(main)> course.capacity
# => 2

pry(main)> course.students
# => []

pry(main)> course.full?
# => false

pry(main)> student1 = Student.new({name: "Morgan", age: 21})
# => #<Student:0x00007fa0a80ae588...>

pry(main)> student2 = Student.new({name: "Jordan", age: 29})    
# => #<Student:0x00007fa0a814f4d8...>

pry(main)> course.enroll(student1)    

pry(main)> course.enroll(student2)    

pry(main)> course.students
# => [#<Student:0x00007fa0a80ae588...>, #<Student:0x00007fa0a814f4d8...>]

pry(main)> course.full?
# => true
```

## Iteration 3

You have been contracted by the University of Denver to write a program that models gradebooks for its courses. Use TDD to implement the following features:

1. Create a `Gradebook` class. Each gradebook has an instructor (dynamic), as well as a way to read that data.
2. Each gradebook has courses, as well as a way to read that data.
3. A gradebook can list all the students in its courses.
4. A gradebook can return a list of students whose grades are below a given threshold.

Method Name                 | Return Value (type)
-----------                 | -------------------
`instructor`                | `String`
`courses`                   | `Array` of `Course` objects
`add_course(course)`        | `Array` of `Course` objects including the new one just added.
`list_all_students`         | `Hash` where the `key` is a `Course` object and the `value` is an `Array` of `Student` objects (see example below)
`students_below(threshold)` | `Array` of `Student` objects

```ruby
# list_all_students

{
  <Course> => [<Student>, <Student>],
  <Course> => [<Student>]
}
```

## Iteration 4

The University of Denver would like you to implement additional `Gradebook` functionality:

1. They would like to be able to track all the grades across all courses.
2. They would also like to be able to find all students across all courses that have a grade in a given range.

Method Name                   | Return Value (type)
------------                  | -------------------
`all_grades`                  | `Hash` where the `key` is a `Course` object and the `value` is an `Array` of all the grades for that course.
`students_in_range(min, max)` | `Array` of `Student` objects
