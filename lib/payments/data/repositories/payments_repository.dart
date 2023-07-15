abstract class PaymentsRepository {
  Future<void> pay();

  Future<void> cancelPayment();

  Future<void> requestCashback();
}
