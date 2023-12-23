abstract class IBuilder {
  void startUpOperations();
  void buildBody();
  void insertWheels();
  void addHeadlights();
  void endOperations();
  Product GetVehicle();
}

class Product {
  late List<String> parts;

  Product() {
    parts = [];
  }

  void addPart(String part) {
    parts.add(part);
  }

  String show() {
    StringBuffer r = StringBuffer();
    r.write("Product component are:");
    for (var part in parts) {
      r.write(" " + part);
    }

    return r.toString();
  }
}

class Car extends IBuilder {
  late String _brandName;

  late Product _product;

  Car(String brand) {
    this._brandName = brand;
    this._product = new Product();
  }

  @override
  void startUpOperations() {
    this._product.addPart('Car model name: ${this._brandName}');
  }

  @override
  void insertWheels() {
    this._product.addPart("Wheels are added");
  }

  @override
  void addHeadlights() {
    this._product.addPart("Headlights are added");
  }

  @override
  void buildBody() {
    this._product.addPart("Body of car was added");
  }

  @override
  void endOperations() {
    // TODO: implement endOperations
  }

  @override
  Product GetVehicle() => this._product;
}

class MotoCycle extends IBuilder {
  late String _brandName;

  late Product _product;

  MotoCycle(String brand) {
    this._brandName = brand;
    this._product = new Product();
  }

  @override
  void startUpOperations() {
    this._product.addPart('Motocycle model name: ${this._brandName}');
  }

  @override
  void insertWheels() {
    this._product.addPart("Wheels are added");
  }

  @override
  void addHeadlights() {
    this._product.addPart("Headlights are added");
  }

  @override
  void buildBody() {
    this._product.addPart("Body of motoCycle was added");
  }

  @override
  void endOperations() {
    // TODO: implement endOperations
  }

  @override
  Product GetVehicle() => this._product;
}

class Director {
  late IBuilder builder;

  void construct(IBuilder builder) {
    this.builder = builder;
    builder.startUpOperations();
    builder.buildBody();
    builder.GetVehicle();
    builder.addHeadlights();
    builder.endOperations();
  }
}
