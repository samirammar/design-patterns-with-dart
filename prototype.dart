abstract class EmployeePrototype {
  int id;
  String name;
  Address address;

  EmployeePrototype(
      {required this.id, required this.name, required this.address});

  EmployeePrototype shallowClone();
  EmployeePrototype deepClone();

  @override
  String toString() {
    return """
      Id: ${this.id}
      Name: ${this.name}
      Address: ${this.address.city}, ${this.address.streetName}, ${this.address.building}
    """;
  }
}

class Address {
  String city;
  String streetName;
  String building;

  Address(
      {required this.city, required this.streetName, required this.building});
}

class RegEmployee extends EmployeePrototype {
  RegEmployee({
    required super.id,
    required super.name,
    required super.address,
  });

  @override
  EmployeePrototype deepClone() {
    EmployeePrototype newEmp = RegEmployee(
      id: this.id,
      name: this.name,
      address: Address(
        building: this.address.building,
        city: this.address.city,
        streetName: this.address.streetName,
      ),
    );

    return newEmp as RegEmployee;
  }

  @override
  EmployeePrototype shallowClone() {
    return this;
  }
}

class TempEmployee extends EmployeePrototype {
  TempEmployee({
    required super.id,
    required super.name,
    required super.address,
  });

  @override
  EmployeePrototype deepClone() {
    EmployeePrototype newEmp = TempEmployee(
      id: this.id,
      name: this.name,
      address: Address(
        building: this.address.building,
        city: this.address.city,
        streetName: this.address.streetName,
      ),
    );

    return newEmp as TempEmployee;
  }

  @override
  EmployeePrototype shallowClone() {
    return this;
  }
}
