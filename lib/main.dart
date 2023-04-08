
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mynotes/views/login_view.dart';
import 'firebase_options.dart';

// Future main() async {
//   WidgetsFlutterBinding.ensureIntialized();
//   await Firebase.initializedApp();
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
 
        
        primarySwatch: Colors.blue,
      ),
      home: const LoginView(),
    ),);
}

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {

  late final TextEditingController _email;
  late final TextEditingController _password;

@override
  void initState() {
    // TODO: implement initState

    _email = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
        actions: []),

      body: FutureBuilder(

        future: Firebase.initializeApp(
                options: DefaultFirebaseOptions.currentPlatform,
              ),
        builder: (context, snapshot) {
          switch(snapshot.connectionState){
            case ConnectionState.done:
              return Column(
          children: [
            TextField(
              controller: _email,
              enableSuggestions: false,
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                hintText: "Enter your email here:"
              ),
            ),
            TextField(
              controller: _password,
              obscureText: true,
              enableSuggestions: false,
              autocorrect: false,
              decoration: const InputDecoration(
                hintText: "Enter your password:"
              ),
              
            ),
          
          TextButton(
            onPressed: () async {
      
            //  await Firebase.initializeApp(
            //      options: DefaultFirebaseOptions.currentPlatform,
            //   );
            try{
                final email = _email.text;
              final password = _password.text;
              final UserCredential = 
                await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
                print(UserCredential);
            } on FirebaseAuthException catch(e){
              print("Something bad happened");
            }
            },
            child: const Text("Register")
          )
          ],
        );

        default:
          return const Text("Loading...");
          }

          
        },
      
      ),  
    );
}

}

