abstract class PaymentsRepository {
  Future<List<Object>> fetchAllPaymentMethods();

  Future<void> addNewPaymentMethod() async {}

  Future<void> pay() async {}

  Future<void> cancelPayment() async {}

  Future<void> requestRefund() async {}
}
