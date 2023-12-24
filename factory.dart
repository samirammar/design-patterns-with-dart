abstract class IBankFactory {
  IBank getBank(String bankCode);
  IPaymentCard getPyment(String code);
}

class BankFactory extends IBankFactory {
  @override
  IBank getBank(String bankCode) {
    switch (bankCode) {
      case '111111':
        return BankA();
      default:
        return BankB();
    }
  }

  @override
  IPaymentCard getPyment(String code) {
    switch (code) {
      case '111111':
        return Visa();
      default:
        return MasterCard();
    }
  }
}

abstract class IBank {
  String withdraw();
}

class BankA extends IBank {
  @override
  String withdraw() {
    return "BankA withdraw";
  }
}

class BankB extends IBank {
  @override
  String withdraw() {
    return "BankB withdraw";
  }
}

abstract class IPaymentCard {
  String getName();
  String getProvider();
}

class Visa extends IPaymentCard {
  @override
  String getName() {
    return "Visa Card";
  }

  @override
  String getProvider() {
    return "Visa Payment";
  }
}

class MasterCard extends IPaymentCard {
  @override
  String getName() {
    return "Master Card";
  }

  @override
  String getProvider() {
    return "Master Card Payment";
  }
}
