import 'prototype.dart';
import 'singleton.dart';

void main(List<String> args) {
  // singleton();
  prototype();
}

void singleton() {
  Singleton singleton1 = Singleton.Instance();
  Singleton singleton2 = Singleton.Instance();

  singleton1.name = "samir gmmal";
  print(singleton1.hashCode);
  print(singleton2.hashCode);
}

void prototype() {
  EmployeePrototype temp1 = TempEmployee(
    id: 1,
    name: "samir",
    address: Address(
        city: "Mansoura", streetName: "mohammed Ali", building: "Ammar"),
  );

  EmployeePrototype temp2 = temp1.shallowClone();
  EmployeePrototype temp3 = temp1.deepClone();

  temp2.address.city = "Cairo";
  print(temp1.hashCode);
  print(temp2.hashCode);
  print(temp3.hashCode);
  print('$temp1\n$temp2\n$temp3');
}
