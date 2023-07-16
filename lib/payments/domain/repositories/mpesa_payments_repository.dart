import 'package:prototype/payments/data/models/payments_abstract_class.dart';
import 'package:prototype/payments/data/remote/data_sources/mpesa_remote_data_source.dart';
import 'package:prototype/payments/data/repositories/mpesa_payments_repository.dart';
import 'package:prototype/payments/domain/repositories/payments_repository.dart';

class MpesaPaymentsDomainRepository implements PaymentsDomainRepository {
  final MpesaPaymentsDataRepository _mpesaPaymentsDataRepository;

  MpesaPaymentsDomainRepository(this._mpesaPaymentsDataRepository);

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
    MPesaRemoteDataSource().savePaymentMethod();
    throw UnimplementedError();
  }

  @override
  Future<List<PaymentsAbstractClass>> fetchAllPaymentMethods() {
    // TODO: implement fetchAllPaymentMethods
    _mpesaPaymentsDataRepository.fetchAllPaymentMethods();
    throw UnimplementedError();
  }
}
