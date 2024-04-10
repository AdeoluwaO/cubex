class CreateAccountModel {
  const CreateAccountModel({
    this.username,
    this.password,
    this.email,
    this.phone,
    this.address,
    this.image,
    this.token,
  });
  final String? username, password, email, phone, address, image, token;

  factory CreateAccountModel.fromJson(Map<String, dynamic> json) =>
      CreateAccountModel(
        username: json['username'],
        password: json['password'],
        email: json['email'],
        phone: json['phone'],
        address: json['address'],
        image: json['image'],
      );

  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'password': password,
      'email': email,
      'phone': phone,
      'address': address,
      'image': image,
    };
  }
}

class LoginModel {
  const LoginModel({
    this.username,
    this.password,
  });
  final String? username, password;
  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'password': password,
    };
  }
}

class LoginResponseModel {
  const LoginResponseModel({
    this.token,
  });
  final String? token;

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) =>
      LoginResponseModel(
        token: json['token'],
      );
}
