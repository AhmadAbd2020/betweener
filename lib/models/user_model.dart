class User {
  int? id;
  String? name;
  String? email;
  dynamic emailVerifiedAt;
  String? createdAt;
  String? updatedAt;
  int? isActive;
  dynamic country;
  dynamic ip;
  dynamic long;
  dynamic lat;

  User(
      {this.id,
      this.name,
      this.email,
      this.emailVerifiedAt,
      this.createdAt,
      this.updatedAt,
      this.isActive,
      this.country,
      this.ip,
      this.long,
      this.lat});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    emailVerifiedAt = json['email_verified_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    isActive = json['isActive'];
    country = json['country'];
    ip = json['ip'];
    long = json['long'];
    lat = json['lat'];
  }
}

class NearestUsers {
  int? id;
  int? userId;
  String? type;
  String? createdAt;
  String? updatedAt;
  int? distance;
  User? user;

  NearestUsers(
      {this.id,
      this.userId,
      this.type,
      this.createdAt,
      this.updatedAt,
      this.distance,
      this.user});

  NearestUsers.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    type = json['type'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    distance = json['distance'];
    user = json['user'] != null ? User.fromJson(json['user']) : null;
  }
}
