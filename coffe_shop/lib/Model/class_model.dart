
class UserCredential {
  String name;
  String email;
  String password;

  UserCredential({required this.name, required this.email, required this.password});

  Map<String, dynamic> userMap() {
    return {
      'name':name,
      'email':email,
      'password':password
    };
  }

  @override
  String toString() {

    return '{name:$name, email:$email, password:$password}';
  }
}