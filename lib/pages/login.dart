import 'package:expenses_tracker/clients/user_client.dart';
import 'package:flutter/material.dart';
import '../models/user.dart' show UserCredential;
final userClient = UserClient();
void signIn(UserCredential userCredential){
  userClient.signIn(userCredential);
}
class LoginPage extends StatelessWidget {
  
  const LoginPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    
    final userNameController = TextEditingController();
    final passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue,),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            decoration: const InputDecoration(labelText: 'Username:'),
            controller: userNameController,
          ),
          TextFormField(
            decoration: const InputDecoration(labelText: 'Password:'),
            controller: passwordController,
            obscureText: true,
          ),
          
          ElevatedButton(
            onPressed: () {
              final userCredential = UserCredential(userName: userNameController.text, password: passwordController.text);
              signIn(userCredential);
            },
            child: const Text("Login"),
          )
        ],
      ),
    );
  }
}