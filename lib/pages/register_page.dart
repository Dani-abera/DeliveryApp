import 'package:flutter/material.dart';

import '../components/my_button.dart';
import '../components/my_textField.dart';

class RegisterPage extends StatefulWidget {
  final Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _emailField = TextEditingController();
  final TextEditingController _confirmPasswordField = TextEditingController();
  final TextEditingController _passwordField = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.lock_open_rounded,
            size: 100,
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            "Let's Create Account For you",
            style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary),
          ),
          SizedBox(
            height: 25,
          ),
          MyTextField(
            controller: _emailField,
            hintText: "Email",
            obscureText: false,
          ),
          SizedBox(
            height: 25,
          ),
          MyTextField(
            controller: _passwordField,
            hintText: "Password",
            obscureText: true,
          ),
          SizedBox(
            height: 25,
          ),
          MyTextField(
            controller: _confirmPasswordField,
            hintText: "Confirm Password",
            obscureText: true,
          ),
          SizedBox(
            height: 25,
          ),
          MyButton(text: "Sign Up"),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'already Registered',
                style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary),
              ),
              SizedBox(
                width: 4,
              ),
              GestureDetector(
                onTap: widget.onTap,
                child: Text(
                  'Login now',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.inversePrimary),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
