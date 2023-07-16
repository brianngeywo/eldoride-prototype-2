import 'package:prototype/payments/domain/use_cases/mpesa_payments_use_case.dart';
import 'package:prototype/payments/presentation/controller/payments_controller.dart';

class MPesaPaymentsController implements PaymentsController {
  final MPesaPaymentsUseCase mPesaPaymentsUseCase;

  MPesaPaymentsController(this.mPesaPaymentsUseCase);

  @override
  Future<void> payFortrip() {
    // TODO: implement payFortrip
    mPesaPaymentsUseCase.payForTrip();
    throw UnimplementedError();
  }

  @override
  Future<void> requestRefund() {
    // TODO: implement requestRefund
    throw UnimplementedError();
  }
}
