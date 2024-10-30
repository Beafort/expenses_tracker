import "package:expenses_tracker/models/user.dart";
import "package:pocketbase/pocketbase.dart";
final pb = PocketBase('http://127.0.0.1:8090');
class UserClient{
   
  UserClient._internal();

  
  static final UserClient instance = UserClient._internal();

  
  factory UserClient() {
    return instance;
  }

  void signIn(UserCredential userCredential) async {
    final userData = await pb.collection('users').authWithPassword(userCredential.userName, userCredential.password);
    
    
  }
}