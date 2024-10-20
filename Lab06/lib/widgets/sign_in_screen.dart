import 'package:flutter/material.dart';
import 'package:lab07/components/MyFlutterLogo.dart';
import 'package:lab07/components/MyTextField.dart';
import './reset_password_screen.dart';
import './sign_up_screen.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

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
              // Flutter logo
              const MyFlutterLogo(width: 200),
              const SizedBox(height: 40),

              // Email field
              const MyTextField(labelText: 'Email'),
              const SizedBox(height: 20),

              // Password field
              const MyTextField(labelText: 'Password'),
              const SizedBox(height: 20),

              // Sign up button
              ElevatedButton(
                onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUpScreen(),
                    ),
                  )
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
                child: const Text('Sign up'),
              ),
              const SizedBox(height: 20),

              // Row for Login and Reset password
              Row(
                children: [
                  // Login button
                  Expanded(
                    child: ElevatedButton(
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
                      child: const Text('Login'),
                    ),
                  ),
                  const SizedBox(width: 10),

                  // Reset password link
                  Expanded(
                    child: TextButton(
                      onPressed: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ResetPasswordScreen(),
                          ),
                        )
                      },
                      style: TextButton.styleFrom(
                        minimumSize: const Size(double.infinity, 50),
                        foregroundColor: Colors.blue[900],
                        padding: const EdgeInsets.symmetric(
                          vertical: 15,
                        ),
                      ),
                      child: const Text('Reset password'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
