import 'package:prototype/payments/data/models/payments_abstract_class.dart';
import 'package:prototype/payments/domain/repositories/payments_repository.dart';

class CreditCardPaymentsDomainRepository implements PaymentsDomainRepository {
  @override
  Future<void> cancelPayment() {
    // TODO: implement cancelPayment
    throw UnimplementedError();
  }

  @override
  Future<void> pay() {
    // TODO: implement pay
    throw UnimplementedError();
  }

  @override
  Future<void> requestRefund() {
    // TODO: implement requestCashback
    throw UnimplementedError();
  }

  @override
  Future<void> addNewPaymentMethod() {
    // TODO: implement addNewPaymentMethod
    throw UnimplementedError();
  }

  @override
  Future<List<PaymentsAbstractClass>> fetchAllPaymentMethods() {
    // TODO: implement fetchAllPaymentMethods
    throw UnimplementedError();
  }
}
