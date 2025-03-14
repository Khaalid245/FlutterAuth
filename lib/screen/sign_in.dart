import 'package:authinaction/controller/auth_controller.dart';
import 'package:authinaction/screen/sign_up.dart';
import 'package:authinaction/screen/widgets/text_field_widget.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInPage extends StatelessWidget {
  SignInPage({super.key});

  final TextEditingController txtEmail = TextEditingController();
  final TextEditingController txtPassword = TextEditingController();
  final AuthController _authController = Get.put(AuthController());
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
              'Welcome back !',
              style: TextStyle(color: Colors.white, fontSize: 32),
            ),
            const SizedBox(height: 8),
            Text(
              'sign in to continue your account',
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
            const SizedBox(height: 16),
            CustomeWidget(
              hintText: 'Email address',
              iconData: FluentIcons.mail_24_regular,
              isPassword: false,
              controller: txtEmail,
            ),
            const SizedBox(height: 12),

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
            ElevatedButton(
              onPressed: () {
                _authController.SignIn(
                  email: txtEmail.text,
                  password: txtPassword.text,
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0Xff5A00EC),
                minimumSize: const Size(double.infinity, 60),
              ),
              child: Text(
                'Login account',
                style: TextStyle(color: Colors.grey.shade100),
              ),
            ),
            TextButton(
              onPressed: () {
                Get.off(SignUpPage());
              },
              child: Text(
                'Alif code Academy? Create an Account',
                style: TextStyle(color: Colors.grey.shade500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
