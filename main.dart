import 'singleton.dart';

void main(List<String> args) {
  singleton();
}

void singleton() {
  Singleton singleton1 = Singleton.Instance();
  Singleton singleton2 = Singleton.Instance();

  singleton1.name = "samir gmmal";
  print(singleton1.hashCode);
  print(singleton2.hashCode);
}
