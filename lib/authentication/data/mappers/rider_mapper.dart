import 'package:prototype/authentication/data/models/rider_data_model.dart';
import 'package:prototype/authentication/domain/entities/rider_entity.dart';

class RiderMapper {
  static RiderEntity fromModel(RiderDataModel model) {
    return RiderEntity(
      id: model.id,
      name: model.name,
      email: model.email,
      password: model.password,
      createdAt: model.createdAt,
      updatedAt: model.updatedAt,
      phone: model.phone,
      image: model.image,
      address: '',
      city: '',
      state: '',
      country: '',
      zipCode: '',
      deletedAt: '',
      token: model.token,
      tokenCreatedAt: '',
      tokenExpireAt: '',
      status: true,
      isVerified: false,
      isBlocked: false,
      isOnline: false,
      isRiding: '',
      isTripStarted: false,
      isTripEnded: false,
      isTripCancelled: false,
      isTripRated: false,
      isTripRatedByDriver: false,
      isTripRatedByRider: false,
      isTripRatedByAdmin: false,
      isTripRatedBySystem: false,
    );
  }

  RiderDataModel fromEntity(RiderEntity entity) {
    return RiderDataModel(
      id: entity.id,
      name: entity.name,
      email: entity.email,
      password: entity.password,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
      phone: entity.phone,
      image: entity.image,
      token: entity.token,
    );
  }
}
