import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:authinaction/controller/auth_controller.dart'; // Ensure this is correct
import 'package:authinaction/screen/sign_in.dart';
import 'package:authinaction/screen/widgets/text_field_widget.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});

  final AuthController _controller = Get.put(AuthController());

  // Controllers for Text Fields
  final TextEditingController txtEmail = TextEditingController();
  final TextEditingController txtPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1B1B1B),
      appBar: AppBar(backgroundColor: Colors.transparent),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/logo.png', width: 200, height: 120),
            Text(
              'Create new account',
              style: TextStyle(color: Colors.white, fontSize: 32),
            ),
            const SizedBox(height: 15),
            Text(
              'Please enter data to create a new account',
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
            const SizedBox(height: 12),

            // Custom Email Field
            CustomeWidget(
              hintText: 'Email address',
              iconData: FluentIcons.mail_24_regular,
              isPassword: false,
              controller: txtEmail,
            ),
            const SizedBox(height: 12),

            // Custom Password Field
            CustomeWidget(
              hintText: 'Password',
              iconData: FluentIcons.lock_closed_16_regular,
              isPassword: true,
              controller: txtPassword,
            ),
            const SizedBox(height: 17),

            Text(
              'I agree to the terms of service & privacy policy',
              style: TextStyle(color: Colors.grey.shade500, fontSize: 14),
            ),
            const SizedBox(height: 10),

            // Create Account Button
            ElevatedButton(
              onPressed: () {
                // Call signUp with named parameters email and password
                _controller.signUp(
                  email: txtEmail.text.trim(),
                  password: txtPassword.text.trim(),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0Xff5A00EC),
                minimumSize: const Size(double.infinity, 60),
              ),
              child: Text(
                'Create account',
                style: TextStyle(color: Colors.grey.shade100),
              ),
            ),

            // Sign In Text Button
            TextButton(
              onPressed: () {
                Get.off(SignInPage());
              },
              child: Text(
                'Already have an account? Sign in',
                style: TextStyle(color: Colors.grey.shade500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
