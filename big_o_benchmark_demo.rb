require 'benchmark'

people = {
  "Alice": "teacher",
  "Alex": "student",
  "Ali": "student",
  "Bianca": "student", 
  "Carmen": "student",
  "Gregory": "student",
  "James": "student", 
  "Jon": "student",
  "Cindy": "student",
  "Joseph": "teacher",
  "Kevin": "student",
  "Kasumi": "student", 
  "Kriss": "teacher",
  "Khaled": "student",
  "Luke": "teacher",
  "Nathaniel": "student", 
  "Neil": "student",
  "Olivia": "student",
  "Omar": "student",
  "Petr": "student",
  "Reena": "student",
  "Ric": "student",
  "Richard": "student",
  "Sakshi": "student",
  "Sana": "student",
  "Shaun": "teacher",
  "Sophie": "student",
  "Syaf": "student",
  "Takuya": "student",
  "Terence": "student",
  "Tessa": "student",
  "Travis": "student"
}

people_names = people.keys
people_kind = people.values

# O(n^2) quadratic time == O(n^2+2n+1) since can drop significant terms
def students_bigo_to_n2(people, names, kinds)
  students = []
  names.each_with_index do |name, name_index|
    kinds.each_with_index do |kind, kind_index|
    end
    students << name if people[name] == "student"
  end
  # puts students
  # puts students.count
  students
end
students_bigo_to_n2(people, people_names, people_kind)

# O(n)
def students_bigo_to_n(people, names, kinds)
  students = []
  people.each do |key, value|
    students << key if value == "student"
    # puts key if value == "student"
  end
  # puts students
  # puts students.count
  students
end
students_bigo_to_n(people, people_names, people_kind)

# Benchmark
n = 5000000
Benchmark.bm do |x|
  x.report { students_bigo_to_n2(people, people_names, people_kind) } # O(n^2)
  x.report { students_bigo_to_n(people, people_names, people_kind) } # O(n)
end
