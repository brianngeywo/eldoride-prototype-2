import '../../domain/repositories/payments_repository.dart';
import '../data_sources/credit_card_payment_remote_data_source.dart';

class CreditCardPaymentsRepository implements PaymentsRepository {
  final CreditCardPaymentRemoteDataSource _creditCardPaymentRemoteDataSource;

  CreditCardPaymentsRepository(this._creditCardPaymentRemoteDataSource);

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
    _creditCardPaymentRemoteDataSource.savePaymentMethod();
    throw UnimplementedError();
  }

  @override
  Future<List<Object>> fetchAllPaymentMethods() {
    // TODO: implement fetchAllPaymentMethods
    throw UnimplementedError();
  }
}
