import 'package:prototype/payments/data/remote/data_sources/mpesa_remote_data_source.dart';

import '../../domain/repositories/payments_repository.dart';

class MpesaPaymentsRepository implements PaymentsRepository {
  final MPesaRemoteDataSource _mPesaRemoteDataSource;

  MpesaPaymentsRepository(this._mPesaRemoteDataSource);

  @override
  Future<void> pay() {
    // TODO: implement pay
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
    _mPesaRemoteDataSource.savePaymentMethod();
    throw UnimplementedError();
  }

  @override
  Future<List<Object>> fetchAllPaymentMethods() {
    // TODO: implement fetchAllPaymentMethods
    throw UnimplementedError();
  }
}
