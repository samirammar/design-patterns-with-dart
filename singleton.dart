// class Singleton {
//   String? name;
//   static Singleton? _singleton = null;

//   static Singleton getInstance() {
//     if (_singleton == null) {
//       _singleton = Singleton();
//     }

//     return _singleton!;
//   }
// }

class Singleton {
  String? name;
  static Singleton? _singleton;

  Singleton._();

  factory Singleton.Instance() {
    if (_singleton == null) {
      _singleton = Singleton._();
    }
    return _singleton!;
  }
}
