
class Student {
  String name;
  int age;
  String grade;

  Student(this.name, this.age, this.grade);

  void info() {
    print("Student name: $name");
    print("age: $age");
    print("Grade: $grade");
  }
}

class Teacher {
  String name;
  int age;
  String subject;

  Teacher(this.name, this.age, this.subject);

  void info() {
    print("Teacher's name: $name");
    print("Age: $age");
    print("Subject: $subject");
  }
}

class Schoolmembers {
  static void printInfo(Student student, Teacher teacher) {
    student.info();
    teacher.info();
  }
}

void main() {
  var student = Student('Wangwe', 25, 'A');
  var teacher = Teacher("Amenya", 40, 'Chemistry');

  Schoolmembers.printInfo(student, teacher);
}
