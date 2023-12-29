import 'package:flutter/material.dart';
import 'package:cyber_secure/screens/utilities.dart';
import 'package:cyber_secure/screens/background_img.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/background.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Scaffold(
            backgroundColor: Colors.transparent,
            body: ListView(
              children: [buildheading(context)],
            ))
      ],
    );
  }

  Widget buildheading(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: screenHeight * 0.15),
        const CustomText(
          text: "CyberSecure",
          color: const Color(0xFF4E82EA),
          fontSize: 44,
          fontStyle: null,
          fontfamily: '',
        ),
        SizedBox(height: screenHeight * 0.06),
        const CustomText1(
          text: "Welcome",
          color: Color(0xFF00184A),
          fontSize: 22,
          fontStyle: null,
          fontfamily: 'Poppins',
        ),
        const CustomText(
          text: "Sign up to continue",
          color: Color(0xFFA0A0A0),
          fontSize: 14,
          fontStyle: null,
          fontfamily: 'Poppins',
        ),
        SizedBox(
          height: screenHeight * 0.08,
        ),
        buildtextfiled(
          'assets/User.png',
          "Name",
          context,
          "Rahul Yadav",
          false,
        ),
        buildtextfiled(
          'assets/mingcute_idcard-fill.png',
          "Phone Number",
          context,
          "9058-958-389",
          false,
        ),
        Padding(
          padding: EdgeInsets.only(
              top: screenHeight * 0.03, bottom: screenHeight * 0.035),
          child: Container(
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                      text: 'Already Signed Up?',
                      fontStyle: null,
                      fontSize: 14,
                      color: Color(0xFFA0A0A0)),
                  CustomText(
                      text: 'Login',
                      fontStyle: null,
                      fontSize: 14,
                      color: const Color(0xFF4E82EA))
                ]),
          ),
        ),
        button("Sign In", 40.0, 320.0, context, Login())
      ],
    );
  }
}
