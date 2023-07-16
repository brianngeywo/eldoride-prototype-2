import 'package:prototype/payments/data/models/payments_abstract_class.dart';

abstract class PaymentsDomainRepository {
  Future<List<PaymentsAbstractClass>> fetchAllPaymentMethods();

  Future<void> addNewPaymentMethod() async {}

  Future<void> pay() async {}

  Future<void> cancelPayment() async {}

  Future<void> requestRefund() async {}
}
