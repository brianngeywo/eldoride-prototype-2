import 'package:prototype/payments/domain/use_cases/credit_card_payments_use_case.dart';
import 'package:prototype/payments/presentation/controllers/payments_controller.dart';

class CreditCardPaymentsController implements PaymentsController {
  final CreditCardPaymentsUseCase creditCardPaymentsUseCase;

  CreditCardPaymentsController(this.creditCardPaymentsUseCase);

  @override
  Future<void> payFortrip() {
    // TODO: implement payFortrip
    creditCardPaymentsUseCase.payForTrip();
    throw UnimplementedError();
  }

  @override
  Future<void> requestRefund() {
    // TODO: implement requestRefund
    throw UnimplementedError();
  }
}
