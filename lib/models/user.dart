class UserProfile {
  
  final String name;
  final String id;
  final String? email;
  const UserProfile(this.email, {required this.id, required this.name});
}


class UserCredential{
  final String userName;
  final String password;
  final String? passwordConfirm;

  UserCredential({this.passwordConfirm, required this.userName, required this.password});
}