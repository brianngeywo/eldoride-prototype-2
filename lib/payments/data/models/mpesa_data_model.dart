class MPesaDataModel {
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
  final String accountBalance;
  final String thirdPartyReference;
  final String msisdn;

  MPesaDataModel({
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
    required this.accountBalance,
    required this.thirdPartyReference,
    required this.msisdn,
  });

  //toMap method
  Map<String, dynamic> toMap() {
    return {
      "phoneNumber": phoneNumber,
      "amount": amount,
      "reference": reference,
      "transactionId": transactionId,
      "transactionDate": transactionDate,
      "transactionStatus": transactionStatus,
      "transactionStatusReason": transactionStatusReason,
      "transactionType": transactionType,
      "firstName": firstName,
      "middleName": middleName,
      "lastName": lastName,
      "accountBalance": accountBalance,
    };
  }

  //fromMap method
  factory MPesaDataModel.fromMap(Map<String, dynamic> map) {
    return MPesaDataModel(
      phoneNumber: map["phoneNumber"],
      amount: map["amount"],
      reference: map["reference"],
      transactionId: map["transactionId"],
      transactionDate: map["transactionDate"],
      transactionStatus: map["transactionStatus"],
      transactionStatusReason: map["transactionStatusReason"],
      transactionType: map["transactionType"],
      firstName: map["firstName"],
      middleName: map["middleName"],
      lastName: map["lastName"],
      accountBalance: map["accountBalance"],
      thirdPartyReference: map["thirdPartyReference"],
      msisdn: map["msisdn"],
    );
  }
}
