class RiderDataModel {
  String id;
  String name;
  String email;
  String phone;
  String password;
  String image;
  String token;
  String createdAt;
  String updatedAt;

  RiderDataModel(
      {required this.id,
      required this.name,
      required this.email,
      required this.phone,
      required this.password,
      required this.image,
      required this.token,
      required this.createdAt,
      required this.updatedAt,});

  factory RiderDataModel.fromJson(Map<String, dynamic> json) {
   return RiderDataModel(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      phone: json['phone'],
      password: json['password'],
      image: json['image'],
      token: json['token'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],);
  }
  // toJson method
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['password'] = this.password;
    data['image'] = this.image;
    data['token'] = this.token;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}