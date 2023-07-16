import 'package:prototype/payments/domain/repositories/mpesa_payments_repository.dart';

import '../entities/mpesa_entity.dart';
import 'payment_use_case.dart';

class MPesaPaymentsUseCase implements PaymentsUseCase {
  final MpesaPaymentsDomainRepository _mpesaPaymentsRepository;

  MPesaPaymentsUseCase(this._mpesaPaymentsRepository);

  @override
  Future<void> payForTrip() {
    // TODO: implement payForTrip
    _mpesaPaymentsRepository.pay();
    throw UnimplementedError();
  }

  @override
  Future<void> cancelPayment() {
    // TODO: implement cancelPayments
    _mpesaPaymentsRepository.cancelPayment();
    throw UnimplementedError();
  }

  @override
  Future<void> requestRefund() {
    // TODO: implement requestRefund
    _mpesaPaymentsRepository.requestRefund();
    throw UnimplementedError();
  }

  @override
  Future<void> addNewPaymentMethod() {
    // TODO: implement addNewPaymentMethod
    throw UnimplementedError();
  }

  @override
  Future<List<MpesaEntity>> getAllPaymentMethods() {
    // TODO: implement getAllPaymentMethods
    throw UnimplementedError();
  }
}