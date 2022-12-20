class User {
  final String name;
  final String Id;
  final String username;
  final String email;

  User({
    required this.name,
    required this.Id,
    required this.username,
    required this.email,
  });

  factory User.fromJson(Map<String,dynamic> userdata) => User(
      name: userdata['name'],
      Id: userdata['Id'],
      username: userdata['username'],
      email: userdata['email']);

  Map<String, dynamic> toJson() => {
        "userId": name,
        "Id": Id,
        "username": username,
        "email": email,
      };
}