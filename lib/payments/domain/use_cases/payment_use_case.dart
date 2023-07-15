import 'package:prototype/payments/data/repositories/payments_repository.dart';

class PaymentsUseCase {
  final PaymentsRepository repository;

  PaymentsUseCase(this.repository);

  Future<void> payForTrip() {
    return repository.pay();
  }
}
