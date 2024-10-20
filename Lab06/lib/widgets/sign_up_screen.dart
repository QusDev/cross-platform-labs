import 'package:flutter/material.dart';
import 'package:lab07/components/MyFlutterLogo.dart';
import 'package:lab07/components/MyTextField.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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

              //Sign up title
              const Text(
                'Sign up',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24
                ),
              ),
              const SizedBox(height: 40),

              //Name input
              const MyTextField(labelText: 'Name'),
              const SizedBox(height: 20),

              //Email input
              const MyTextField(labelText: 'Email'),
              const SizedBox(height: 20),

              //Password input
              const MyTextField(labelText: 'Password'),
              const SizedBox(height: 20),

              //Sign up button
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
                    vertical: 15,
                  ),
                ),
                child: const Text('Sign up'),
              ),
              const SizedBox(height: 20),

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
                    vertical: 15,
                  ),
                ),
                child: const Text('Back'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}