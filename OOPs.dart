// OOPs  Concept in a nutshell

/* Class - Blueprint */
void main() {
  SelfDrivingCar myWaymo = SelfDrivingCar('1 hacker way');
  myWaymo.drive();
}

/* Encapsulation */
// Encapsulation - Creating class is called Encapsulation (method and property)
class Car {
  int _numberOfSeat =
      5; //_(private abstraction (doing variable private is abstraction) )

  void drive() {
    print('wheels run');
  }
}

/*Inheritence*/
class ElectricCar extends Car {
  // extends keyword is used for inheritance (use parent property)
  int batteryLevel = 100;

  void recharge() {
    batteryLevel = 100;
  }
}

/*Polymorphism */
class LevitatingCar extends Car {
  @override // overriding is Polymorphism (change and use parent behaviour)
  void drive() {
    print('glide forwards');
  }
}

class SelfDrivingCar extends Car {
  late String destination;
  SelfDrivingCar(String userSetDestination) {
    destination = userSetDestination;
  }

  @override
  void drive() {
    super
        .drive(); // super keyword inheriting from parent and updating (polymorphism)
    print('towards right');
  }
}
