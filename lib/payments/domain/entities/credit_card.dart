class CreditCardEntity {
  final String cardNumber;
  final String holder;
  final String expirationDate;
  final String securityCode;

  CreditCardEntity({
    required this.cardNumber,
    required this.holder,
    required this.expirationDate,
    required this.securityCode,
  });

  // fromMap method
  factory CreditCardEntity.fromMap(Map<String, dynamic> map) {
    return CreditCardEntity(
      cardNumber: map['cardNumber'],
      holder: map['holder'],
      expirationDate: map['expirationDate'],
      securityCode: map['securityCode'],
    );
  }

  // toMap method
  Map<String, dynamic> toMap() {
    return {
      'cardNumber': cardNumber,
      'holder': holder,
      'expirationDate': expirationDate,
      'securityCode': securityCode,
    };
  }
}
