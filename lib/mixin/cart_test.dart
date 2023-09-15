mixin ElectricCar {
  void chargeElectricity() {
    print("전기를 충전 합니다");
  }
}
mixin PetrolCar {
  void chargePetrol() {
    print("휘발유를 보충 합니다");
  }
}

// 전기 자동차
class Car1 with ElectricCar {}

// 가솔린 자동차
class Car2 with PetrolCar {}

class HybridCar with ElectricCar, PetrolCar {
  @override
  void chargeElectricity() {
    super.chargeElectricity();
    print("테슬라 전용 충전기를 선택합니다");
  }

  @override
  void chargePetrol() {
    super.chargePetrol();
    print("GS 칼텍스에서 주유를 시작 합니다");
  }
}
