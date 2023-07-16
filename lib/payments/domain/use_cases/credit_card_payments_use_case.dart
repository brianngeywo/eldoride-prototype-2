import 'package:prototype/payments/domain/use_cases/payment_use_case.dart';

import '../entities/credit_card.dart';
import '../repositories/credit_card_payments_repository.dart';

class CreditCardPaymentsUseCase implements PaymentsUseCase {
  final CreditCardPaymentsDomainRepository _creditCardPaymentsRepository;

  CreditCardPaymentsUseCase(this._creditCardPaymentsRepository);

  @override
  Future<void> payForTrip() {
    // TODO: implement payForTrip
    _creditCardPaymentsRepository.pay();
    throw UnimplementedError();
  }

  @override
  Future<void> cancelPayment() {
    // TODO: implement cancelPayment
    throw UnimplementedError();
  }

  @override
  Future<void> requestRefund() {
    // TODO: implement requestRefund
    throw UnimplementedError();
  }

  @override
  Future<void> addNewPaymentMethod() {
    // TODO: implement addNewPaymentMethod
    throw UnimplementedError();
  }

  @override
  Future<List<CreditCardEntity>> getAllPaymentMethods() {
    // TODO: implement getAllPaymentMethods
    throw UnimplementedError();
  }
}
