import 'package:prototype/payments/domain/entities/mpesa_entity.dart';
import 'package:prototype/payments/presentation/models/mpesa_ui_model.dart';

class MPesaEntityToUIModelMapper {
  MPesaUIModel fromEntity(MPesaEntity mPesaEntity) {
    return MPesaUIModel(
        phoneNumber: mPesaEntity.phoneNumber,
        amount: mPesaEntity.amount,
        transactionDate: mPesaEntity.transactionDate,
        transactionStatus: mPesaEntity.transactionStatus,
        transactionStatusReason: mPesaEntity.transactionStatusReason,
        transactionType: mPesaEntity.transactionType,
        firstName: mPesaEntity.firstName,
        middleName: mPesaEntity.middleName,
        lastName: mPesaEntity.lastName,
        accountBalance: mPesaEntity.accountBalance,
        reference: mPesaEntity.reference);
  }
}
