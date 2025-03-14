import 'package:authinaction/controller/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardPage extends StatelessWidget {
  DashboardPage({super.key});

final AuthController _authController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1B1B1B),
      appBar: AppBar(backgroundColor: Colors.transparent),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text(
              'Welcome to the Dashboard',
              style: TextStyle(color: Colors.grey.shade200),
            ),
            SizedBox(height: 20),
            Text(
              'Personal email:Alifcode@gmail.com',
              style: TextStyle(color: Colors.grey.shade200),
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {
                _authController.SignOut();
              },
              child: Text(
                'Logout account',
                style: TextStyle(color: Colors.grey.shade200),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
