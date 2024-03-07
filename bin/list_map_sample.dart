void main() {
  List<Map<String, dynamic>> studentList = [
    {"name": "shiahb", "age": 2},
    {"name": "John", "age": 20},
    {"name": "Emma", "age": 22},
    {"name": "Michael", "age": 21},
    {"name": "Sophia", "age": 19},
    {"name": "Daniel", "age": 23},
    {"name": "Olivia", "age": 20},
    {"name": "Matthew", "age": 22},
    {"name": "Ava", "age": 21},
    {"name": "William", "age": 19},
    {"name": "Isabella", "age": 23},
  ];

  List<Student> litStudentObj = studentList
      .map((element) => Student(
            age: element["age"],
            name: element["name"],
          ))
      .toList();

  print(litStudentObj[4].name);

  Student selectedStudent =
      litStudentObj.firstWhere((element) => element.name == "Ava");

  print(selectedStudent.age);

  List<Student> age21 =
      litStudentObj.where((element) => element.age == 21).toList();

  for (int i = 0; i < age21.length; i++) {
    print(age21[i].name);
  }
}

class Student {
  String? name;
  int? age;

  Student({this.name, this.age});
}
