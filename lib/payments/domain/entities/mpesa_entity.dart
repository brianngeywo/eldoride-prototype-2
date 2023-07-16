class MpesaEntity {
  final String phoneNumber;
  final String amount;
  final String reference;
  final String description;

  MpesaEntity({
    required this.phoneNumber,
    required this.amount,
    required this.reference,
    required this.description,
  });

  Map<String, dynamic> toMap() {
    return {
      'phoneNumber': phoneNumber,
      'amount': amount,
      'reference': reference,
      'description': description,
    };
  }

  factory MpesaEntity.fromMap(Map<String, dynamic> map) {
    return MpesaEntity(
      phoneNumber: map['phoneNumber'],
      amount: map['amount'],
      reference: map['reference'],
      description: map['description'],
    );
  }
}
