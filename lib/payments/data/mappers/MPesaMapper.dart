import 'package:prototype/payments/data/models/mpesa_data_model.dart';
import 'package:prototype/payments/domain/entities/mpesa_entity.dart';

class MPesaMapper {
  MpesaEntity fromModel(MpesaDataModel model) {
    return MpesaEntity(
        phoneNumber: model.phoneNumber,
        amount: model.amount,
        reference: model.reference,
        description: model.thirdPartyReference);
  }

  MpesaDataModel fromEntity(MpesaEntity entity) {
    return MpesaDataModel(
      phoneNumber: entity.phoneNumber,
      amount: entity.amount,
      reference: entity.reference,
      transactionId: "",
      transactionDate: "transactionDate",
      transactionStatus: "transactionStatus",
      transactionStatusReason: "transactionStatusReason",
      transactionType: "transactionType",
      firstName: "firstName",
      middleName: "middleName",
      lastName: "lastName",
      orgAccountBalance: "orgAccountBalance",
      thirdPartyReference: "thirdPartyReference",
      msisdn: "",
    );
  }
}
