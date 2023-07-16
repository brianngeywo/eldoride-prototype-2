import 'package:prototype/payments/data/models/payments_abstract_class.dart';

import '../../domain/entities/mpesa_entity.dart';

class MpesaDataModel implements PaymentsAbstractClass {
  final String phoneNumber;
  final String amount;
  final String reference;
  final String transactionId;
  final String transactionDate;
  final String transactionStatus;
  final String transactionStatusReason;
  final String transactionType;
  final String firstName;
  final String middleName;
  final String lastName;
  final String orgAccountBalance;
  final String thirdPartyReference;
  final String msisdn;

  MpesaDataModel({
    required this.phoneNumber,
    required this.amount,
    required this.reference,
    required this.transactionId,
    required this.transactionDate,
    required this.transactionStatus,
    required this.transactionStatusReason,
    required this.transactionType,
    required this.firstName,
    required this.middleName,
    required this.lastName,
    required this.orgAccountBalance,
    required this.thirdPartyReference,
    required this.msisdn,
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

  @override
  // TODO: implement accountBalance
  String get accountBalance => throw UnimplementedError();

  @override
  // TODO: implement accountId
  String get accountId => throw UnimplementedError();

  @override
  // TODO: implement accountName
  String get accountName => throw UnimplementedError();
}
