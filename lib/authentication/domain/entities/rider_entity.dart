class RiderEntity {
  final String id;
  final String name;
  final String email;
  final String phone;
  final String password;
  final String image;
  final String address;
  final String city;
  final String state;
  final String country;
  final String zipCode;
  final String createdAt;
  final String updatedAt;
  final String deletedAt;
  final String token;
  final String tokenCreatedAt;
  final String tokenExpireAt;
  final bool status;
  final bool isVerified;
  final bool isBlocked;
  final bool isOnline;
  final String isRiding;
  final bool isTripStarted;
  final bool isTripEnded;
  final bool isTripCancelled;
  final bool isTripRated;
  final bool isTripRatedByDriver;
  final bool isTripRatedByRider;
  final bool isTripRatedByAdmin;
  final bool isTripRatedBySystem;

  RiderEntity(
      {
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.password,
    required this.image,
    required this.address,
    required this.city,
    required this.state,
    required this.country,
    required this.zipCode,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
    required this.token,
    required this.tokenCreatedAt,
    required this.tokenExpireAt,
    required this.status,
    required this.isVerified,
    required this.isBlocked,
    required this.isOnline,
    required this.isRiding,
    required this.isTripStarted,
    required this.isTripEnded,
    required this.isTripCancelled,
    required this.isTripRated,
    required this.isTripRatedByDriver,
    required this.isTripRatedByRider,
    required this.isTripRatedByAdmin,
    required this.isTripRatedBySystem,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'name': this.name,
      'email': this.email,
      'phone': this.phone,
      'password': this.password,
      'image': this.image,
      'address': this.address,
      'city': this.city,
      'state': this.state,
      'country': this.country,
      'zipCode': this.zipCode,
      'createdAt': this.createdAt,
      'updatedAt': this.updatedAt,
      'deletedAt': this.deletedAt,
      'token': this.token,
      'tokenCreatedAt': this.tokenCreatedAt,
      'tokenExpireAt': this.tokenExpireAt,
      'status': this.status,
      'isVerified': this.isVerified,
      'isBlocked': this.isBlocked,
      'isOnline': this.isOnline,
      'isRiding': this.isRiding,
      'isTripStarted': this.isTripStarted,
      'isTripEnded': this.isTripEnded,
      'isTripCancelled': this.isTripCancelled,
      'isTripRated': this.isTripRated,
      'isTripRatedByDriver': this.isTripRatedByDriver,
      'isTripRatedByRider': this.isTripRatedByRider,
      'isTripRatedByAdmin': this.isTripRatedByAdmin,
      'isTripRatedBySystem': this.isTripRatedBySystem,
    };
  }

  factory RiderEntity.fromMap(Map<String, dynamic> map) {
    return RiderEntity(
      id: map['id'] as String,
      name: map['name'] as String,
      email: map['email'] as String,
      phone: map['phone'] as String,
      password: map['password'] as String,
      image: map['image'] as String,
      address: map['address'] as String,
      city: map['city'] as String,
      state: map['state'] as String,
      country: map['country'] as String,
      zipCode: map['zipCode'] as String,
      createdAt: map['createdAt'] as String,
      updatedAt: map['updatedAt'] as String,
      deletedAt: map['deletedAt'] as String,
      token: map['token'] as String,
      tokenCreatedAt: map['tokenCreatedAt'] as String,
      tokenExpireAt: map['tokenExpireAt'] as String,
      status: map['status'] as bool,
      isVerified: map['isVerified'] as bool,
      isBlocked: map['isBlocked'] as bool,
      isOnline: map['isOnline'] as bool,
      isRiding: map['isRiding'] as String,
      isTripStarted: map['isTripStarted'] as bool,
      isTripEnded: map['isTripEnded'] as bool,
      isTripCancelled: map['isTripCancelled'] as bool,
      isTripRated: map['isTripRated'] as bool,
      isTripRatedByDriver: map['isTripRatedByDriver'] as bool,
      isTripRatedByRider: map['isTripRatedByRider'] as bool,
      isTripRatedByAdmin: map['isTripRatedByAdmin'] as bool,
      isTripRatedBySystem: map['isTripRatedBySystem'] as bool,
    );
  }

}