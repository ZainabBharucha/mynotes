import 'package:flutter/material.dart';
import 'package:mynotes/constants/routes.dart';
import 'package:mynotes/services/auth/auth_service.dart';


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
               await AuthService.firebase().sendEmailVerification();
                              },
              child: const Text("Send email verification."),
            ),
            TextButton(onPressed: (() {
              AuthService.firebase().logOut();
              Navigator.of(context).pushNamedAndRemoveUntil(registerRoute, (route) => false,);
            }), child: const Text('Restart'))
          ],
        ),
    );
  }
}