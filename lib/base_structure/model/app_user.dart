class AppUser {
  int? userId;
  String? firstName;
  String? lastName;
  String? phoneNumber;
  String? email;
  String? token;

  AppUser({
    this.userId,
    this.firstName,
    this.lastName,
    this.phoneNumber,
    this.email,
    this.token,
  });

  AppUser.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    phoneNumber = json['phone_number'];
    email = json['email'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['userId'] = userId;
    data['first_name'] = firstName;
    data['last_name'] = lastName;
    data['phone_number'] = phoneNumber;
    data['email'] = email;
    data['token'] = token;
    return data;
  }
}
