import 'builder.dart';
import 'factory.dart';
import 'prototype.dart';
import 'singleton.dart';

void main(List<String> args) {
  // singleton();
  // prototype();
  // builder();
  factory();
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

void builder() {
  Director director = new Director();
  IBuilder carBuilder = Car("Jeep");
  IBuilder motoCycleBuilder = MotoCycle("Honda");

  // Making Car
  director.construct(carBuilder);
  Product car = carBuilder.GetVehicle();
  print(car.show());

  // Making Motocycle
  director.construct(motoCycleBuilder);
  Product motocycle = motoCycleBuilder.GetVehicle();
  print(motocycle.show());
}

void factory() {
  IBankFactory bankFactory = BankFactory();

  IBank bank = bankFactory.getBank('111111');
  print(bank.withdraw());

  IPaymentCard payment = bankFactory.getPyment('111111');
  print(payment.getProvider());
}
