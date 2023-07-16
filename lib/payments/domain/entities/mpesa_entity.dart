class MPesaEntity {
  final String phoneNumber;
  final String amount;
  final String reference;
  final String description;
  final String transactionId;
  final String transactionDate;
  final String transactionStatus;
  final String transactionStatusReason;
  final String transactionType;
  final String firstName;
  final String middleName;
  final String lastName;
  final String accountBalance;

  MPesaEntity({
    required this.transactionDate,
    required this.transactionStatus,
    required this.transactionStatusReason,
    required this.transactionType,
    required this.firstName,
    required this.middleName,
    required this.lastName,
    required this.accountBalance,
    required this.phoneNumber,
    required this.amount,
    required this.reference,
    required this.description,
    required this.transactionId,
  });

  Map<String, dynamic> toMap() {
    return {
      'phoneNumber': phoneNumber,
      'amount': amount,
      'reference': reference,
      'description': description,
      'transactionDate': transactionDate,
      'transactionStatus': transactionStatus,
      'transactionStatusReason': transactionStatusReason,
      'transactionType': transactionType,
      'firstName': firstName,
      'middleName': middleName,
      'lastName': lastName,
      'accountBalance': accountBalance,
      'transactionId': transactionId,
    };
  }

  factory MPesaEntity.fromMap(Map<String, dynamic> map) {
    return MPesaEntity(
      phoneNumber: map['phoneNumber'],
      amount: map['amount'],
      reference: map['reference'],
      description: map['description'],
      transactionDate: map['transactionDate'],
      transactionStatus: map['transactionStatus'],
      transactionStatusReason: map['transactionStatusReason'],
      transactionType: map['transactionType'],
      firstName: map['firstName'],
      middleName: map['middleName'],
      lastName: map['lastName'],
      accountBalance: map['accountBalance'],
      transactionId: map['transactionId'],
    );
  }
}
