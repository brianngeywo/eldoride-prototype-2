import 'package:prototype/payments/domain/use_cases/payment_use_case.dart';

class PaymentsController {
  final PaymentsUseCase _paymentsUseCase;

  PaymentsController(this._paymentsUseCase);

  Future<void> payFortrip() {
    return _paymentsUseCase.payForTrip();
  }
}
