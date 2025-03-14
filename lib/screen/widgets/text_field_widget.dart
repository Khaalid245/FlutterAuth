import 'package:flutter/material.dart';

class CustomeWidget extends StatelessWidget {
  const CustomeWidget({
    super.key,

    required this.hintText,
    required this.iconData,
    required this.isPassword,
    required this.controller,
  });
  final String hintText;
  final IconData iconData;
  final bool isPassword;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        color: const Color(0Xff222222),
        borderRadius: BorderRadius.circular(10),
      ),

      child: Row(
        children: [
          Icon(iconData, color: Colors.grey.shade500),
          const SizedBox(width: 10),
          Expanded(
            child: TextField(
              obscureText: isPassword,
              controller: controller,
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: TextStyle(color: Colors.grey.shade500),
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
              style: TextStyle(color: Colors.grey.shade300),
            ),
          ),
        ],
      ),
    );
  }
}
