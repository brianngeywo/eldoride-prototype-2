import 'package:prototype/payments/data/models/payments_abstract_class.dart';
import 'package:prototype/payments/data/remote/data_sources/remote_payments_data_source.dart';

class MPesaRemoteDataSource implements RemotePaymentsDataSource {
  @override
  Future<List<PaymentsAbstractClass>> getAllPaymentMethods() {
    // TODO: implement getAllPaymentMethods
    throw UnimplementedError();
  }

  @override
  Future<void> savePaymentMethod() {
    // TODO: implement savepaymentmethod
    throw UnimplementedError();
  }
}
