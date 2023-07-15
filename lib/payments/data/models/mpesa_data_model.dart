import '../../domain/entities/mpesa_entity.dart';

class MpesaDataModel {
  String? phoneNumber;
  String? amount;
  String? reference;
  String? transactionId;
  String? transactionDate;
  String? transactionStatus;
  String? transactionStatusReason;
  String? transactionType;
  String? firstName;
  String? middleName;
  String? lastName;
  String? orgAccountBalance;
  String? thirdPartyReference;
  String? msisdn;

  MpesaDataModel({
    this.phoneNumber,
    this.amount,
    this.reference,
    this.transactionId,
    this.transactionDate,
    this.transactionStatus,
    this.transactionStatusReason,
    this.transactionType,
    this.firstName,
    this.middleName,
    this.lastName,
    this.orgAccountBalance,
    this.thirdPartyReference,
    this.msisdn,
  });

  MpesaEntity fromModel(MpesaDataModel model) {
    return MpesaEntity(
      phoneNumber: model.phoneNumber,
      amount: model.amount,
      reference: model.reference,
      description: model.reference,
    );
  }

  MpesaDataModel fromEntity(MpesaEntity entity) {
    return MpesaDataModel(
      phoneNumber: entity.phoneNumber,
      amount: entity.amount,
      reference: entity.phoneNumber,
      transactionId: "",
      transactionDate: "",
      transactionStatus: "",
      transactionStatusReason: "",
      transactionType: "",
      firstName: "",
      middleName: "",
      lastName: "",
      orgAccountBalance: "",
      thirdPartyReference: "",
      msisdn: "",
    );
  }
}
