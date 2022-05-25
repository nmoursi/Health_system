import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:health_monitoring_system/screens/auth/sign_up_screen.dart';

import '../../constants.dart';

class ChooseUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/Splash_Screen.jpeg",
            fit: BoxFit.cover,
            height: MediaQuery.of(context).size.height,
            // Now it takes 100% of our height
          ),
          userList(context),
        ],
      ),
    );
  }

  Widget userList(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: defaultPadding * 2),
        TextButton(
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => SignUpScreen(1))),
            child: const Text('Doctor',
                style: TextStyle(
                    fontSize: 25.5,
                    fontWeight: FontWeight.bold,
                    color: Colors.white))),
        const SizedBox(height: defaultPadding * 2),
        TextButton(
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => SignUpScreen(0))),
            child: const Text('Patient',
                style: TextStyle(
                    fontSize: 25.5,
                    fontWeight: FontWeight.bold,
                    color: Colors.white))),
        const SizedBox(height: defaultPadding * 2),
        TextButton(
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => SignUpScreen(2))),
            child: const Text('Admin',
                style: TextStyle(
                    fontSize: 25.5,
                    fontWeight: FontWeight.bold,
                    color: Colors.white))),
        const SizedBox(height: defaultPadding * 2),
        TextButton(
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => SignUpScreen(3))),
            child: const Text('Receptionist',
                style: TextStyle(
                    fontSize: 25.5,
                    fontWeight: FontWeight.bold,
                    color: Colors.white)))
      ],
    );
  }
}
