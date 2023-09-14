class Employee {
  // static <-- 객체들이 공유할 수 있는 메모리 공간이다.
  // 하지만 static 은 해당 객체의 속성 값을 나타내는 것은 아니다.
  String? name;
  static int nextEmployeeNumber = 1000;
  int employeeNumber = 0;

  Employee(String name) {
    this.name = name;
    employeeNumber = nextEmployeeNumber;
    nextEmployeeNumber++;
  }
  // 함수는 - 독립적인 일련에 코드에 묶음 이다.
  // 메서드는 멤버 변수를 활용해서 기능을 구현한다.
  void display() {
    print("이름 : $name");
    print("사원 번호 : $employeeNumber");
  }
}

void main() {
  Employee employee1 = Employee("홍1"); // 1;
  Employee employee2 = Employee("홍2"); // 2;
  Employee employee3 = Employee("홍3"); // 3;
  // 제약 조건
  // Employee 클래스 안에 사원 번호 데이터를 받는 변수를 선언 하시오
  // 단, Employee 인스턴화 되면(객체) 사원 번호는 자동으로 1 씩 증가할 수 있도록
  // 만들어 주세요

  employee1.display();
  employee2.display();
  employee3.display();

  print(Employee.nextEmployeeNumber);
}
