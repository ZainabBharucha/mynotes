import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:mynotes/constants/routes.dart';


class VerifyEmailView extends StatefulWidget {
  const VerifyEmailView({super.key});

  @override
  State<VerifyEmailView> createState() => _VerifyEmailViewState();
}

class _VerifyEmailViewState extends State<VerifyEmailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Verify email"),
      ),
      body: Column(
          children: [
            const Text("We've already sent you a verification email. If you haven't received the verification email, click here!"),
            TextButton(
              onPressed: () async {
                final user = FirebaseAuth.instance.currentUser;
                await user?.sendEmailVerification();
              },
              child: const Text("Send email verification."),
            ),
            TextButton(onPressed: (() {
              FirebaseAuth.instance.signOut();
              Navigator.of(context).pushNamedAndRemoveUntil(registerRoute, (route) => false,);
            }), child: const Text('Restart'))
          ],
        ),
    );
  }
}