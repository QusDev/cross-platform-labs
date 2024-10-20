import 'package:flutter/material.dart';
import 'package:lab07/components/MyFlutterLogo.dart';
import 'package:lab07/components/MyTextField.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                //Flutter logo
                const MyFlutterLogo(width: 200),
                const SizedBox(height: 20),

                //Reset password title
                const Text(
                  'Reset Password',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 24,
                    ),
                  ),
                const SizedBox(height: 40),

                //Email input
                const MyTextField(labelText: 'Email'),
                const SizedBox(height: 20),

                //Reset button
                ElevatedButton(
                  onPressed: () => {
                    showDialog(
                      context: context,
                      builder: (BuildContext ctx) {
                        return const AlertDialog(
                          title: Text("Message"),
                          content: Text("Not to implement"),
                        );
                      },
                    )
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 50),
                    backgroundColor: Colors.blueAccent[900],
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      vertical: 25,
                    ),
                  ),
                  child: const Text('Reset'),
                ),
                const SizedBox(height: 10),

                //Back button
                ElevatedButton(
                  onPressed: () => {
                    Navigator.pop(context)
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 50),
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.blue[900],
                    side: const BorderSide(color: Colors.black12),
                    padding: const EdgeInsets.symmetric(
                      vertical: 25,
                    ),
                  ),
                  child: const Text('Back'),
                ),
              ],
            ),
          ),
        ));
  }
}
