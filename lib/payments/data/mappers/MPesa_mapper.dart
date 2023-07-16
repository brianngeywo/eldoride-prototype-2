import 'package:prototype/payments/data/models/mpesa_data_model.dart';
import 'package:prototype/payments/domain/entities/mpesa_entity.dart';

class MPesaToDataModelMapper {
  MPesaEntity fromModel(MPesaDataModel model) {
    return MPesaEntity(
      phoneNumber: model.phoneNumber,
      amount: model.amount,
      reference: model.reference,
      description: model.thirdPartyReference,
      transactionDate: model.transactionDate,
      transactionId: model.transactionId,
      transactionStatus: model.transactionStatus,
      transactionStatusReason: model.transactionStatusReason,
      transactionType: model.transactionType,
      firstName: model.firstName,
      middleName: model.middleName,
      lastName: model.lastName,
      accountBalance: model.accountBalance,
    );
  }

  MPesaDataModel fromEntity(MPesaEntity entity) {
    return MPesaDataModel(
      phoneNumber: entity.phoneNumber,
      amount: entity.amount,
      reference: entity.reference,
      transactionId: entity.transactionId,
      transactionDate: entity.transactionDate,
      transactionStatus: entity.transactionStatus,
      transactionStatusReason: entity.transactionStatusReason,
      transactionType: entity.transactionType,
      firstName: entity.firstName,
      middleName: entity.middleName,
      lastName: entity.lastName,
      accountBalance: entity.accountBalance,
      thirdPartyReference: entity.description,
      msisdn: entity.phoneNumber,
    );
  }
}
