class User {
  String? name;
  String? email;
  String? phone;
  String? password;

  User(this.name, this.email, this.phone, this.password);
  User.from(this.email, this.password);

  User.fromJson(Map<String, dynamic> json)
  : name = json['name'],
  email = json['email'],
  phone = json['phone'],
  password = json['password'];

  Map<String, dynamic> toJson() => {
    'name': name,
    'email': email,
    'phone': phone,
    'password': password
  };

}