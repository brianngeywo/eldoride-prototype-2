class MPesaUIModel {
  final String phoneNumber;
  final String amount;
  final String reference;
  final String transactionDate;
  final String transactionStatus;
  final String transactionStatusReason;
  final String transactionType;
  final String firstName;
  final String middleName;
  final String lastName;
  final String accountBalance;

  MPesaUIModel({
    required this.phoneNumber,
    required this.amount,
    required this.transactionDate,
    required this.transactionStatus,
    required this.transactionStatusReason,
    required this.transactionType,
    required this.firstName,
    required this.middleName,
    required this.lastName,
    required this.accountBalance,
    required this.reference,
  });
}
