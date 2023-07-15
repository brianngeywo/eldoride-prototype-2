import 'package:prototype/payments/data/models/credit_card_data_model.dart';
import 'package:prototype/payments/domain/entities/credit_card.dart';

class CreditCardMapper {
  CreditCardEntity fromModel(CreditCardDataModel creditModel) {
    return CreditCardEntity(
      cardNumber: creditModel.cardNumber,
      holder: creditModel.cardHolderName,
      expirationDate: creditModel.cardExpirationDate,
      securityCode: creditModel.cardCVV,
    );
  }

  CreditCardDataModel fromEntity(CreditCardEntity cardEntity) {
    return CreditCardDataModel(
      cardNumber: cardEntity.cardNumber,
      cardHolderName: cardEntity.holder,
      cardExpirationDate: cardEntity.expirationDate,
      cardCVV: cardEntity.securityCode,
      cardType: "Visa",
    );
  }
}
