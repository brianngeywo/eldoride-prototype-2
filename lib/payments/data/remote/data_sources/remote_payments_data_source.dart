import 'package:prototype/payments/data/models/payments_abstract_class.dart';

abstract class RemotePaymentsDataSource {
  Future<void> savePaymentMethod() async {
    //TODO: implement payment method using only firebase methods
  }

  Future<List<PaymentsAbstractClass>> getAllPaymentMethods() {
    // TODO: implement getAllPaymentMethods
    throw UnimplementedError();
  }
}
