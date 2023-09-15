abstract class Animal {
  String name;
  Animal(this.name);
  void makeSound();
}

class Dog extends Animal {
  // 메모리에 Animal 이 먼저 올라 가야 한다.
  Dog(String name) : super(name);

  @override
  void makeSound() {
    print("$name 이 멍멍 합니다");
  }
}

class Cat extends Animal {
  Cat(String name) : super(name);

  @override
  void makeSound() {
    print("$name 이 야옹 야옹 합니다");
  }
}

void main() {
  List<Animal> animals = [Dog("복순이"), Cat("또순이")];

  for (var a in animals) {
    a.makeSound();
  }
}
