import 'student class.dart';
import 'university class.dart';
import 'dart:math';

void main() {
  Random random = Random();
  List<Student> students = [];
  List<University> universities = [];
  for (int i = 0; i < 1500; i++) {
    String name = "Student ${i + 1}";
    int age = random.nextInt(30); // value is >=0 & 30
    double grade = random.nextDouble() * 30 + 70;

    students.add(Student(name: name, age: age, grade: grade));
    print("# Name: $name");
    print("# Grade: $grade%");
    if (grade >= 85) {
      print("Excellent");
    } else if (grade < 85 && grade >= 70) {
      print("Very Good");
    } else if (grade < 70 && grade >= 60) {
      print("Good");
    } else {}
    ;

    for (int x = 0; x < 50; x++) {
      String title = "University ${x + 1}";
      String location = "City ${x + 1}";
      double minimumGrade = random.nextDouble();
      int minimumAge = random.nextInt(30);

      if (grade >= minimumGrade && age >= minimumAge) {
        universities.add(University(
            title: title,
            location: location,
            minimumGrade: minimumGrade,
            minimumAge: minimumAge));
        print("--$title");
      } else {
        continue;
      }
    }
    print("");
  }
}
