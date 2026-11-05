
class Person {
  final String name;
  final int age;

  // Default Constructor
  const Person()
      : name = "Unknown",
        age = 0;

  // Parameterized Constructor
  const Person.parameterized(this.name, this.age);

  // Named Constructor
  const Person.named({
    required this.name,
    required this.age,
  });

  void displayInfo() {
    print("Name: $name");
    print("Age: $age");
  }
}

// Student class inherits from Person
class Student extends Person {
  double _grade;

  // Student Constructor using super
  Student({
    required String name,
    required int age,
    required double grade,
  })  : _grade = grade,
        super.parameterized(name, age);

  // Getter
  double get grade => _grade;

  // Setter
  set grade(double value) {
    if (value >= 0 && value <= 100) {
      _grade = value;
    } else {
      print("Invalid grade!");
    }
  }

  // Display Student Information
  void displayStudentInfo() {
    displayInfo();
    print("Grade: $grade");
  }
}

void main() {
  // Create Student Object
  Student student = Student(
    name: "Rofaida",
    age: 20,
    grade: 95,
  );

  // Print Student Information
  student.displayStudentInfo();

  // Using Setter
  student.grade = 98;

  print("\nAfter updating grade:");
  student.displayStudentInfo();
}
