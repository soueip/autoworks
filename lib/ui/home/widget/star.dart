import 'package:flutter/material.dart';

class ContactHeader extends StatelessWidget {
  const ContactHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/whatsapp.png",
          height: 30,
        ),
        const SizedBox(width: 10),
        const Text(
          'GET IN TOUCH',
          style: TextStyle(
            color: Colors.white,
            fontSize: 26,
          ),
        ),
      ],
    );
  }
}
