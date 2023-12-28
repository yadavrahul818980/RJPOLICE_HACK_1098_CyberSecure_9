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
    // return Stack(
    //     children:[
    //       BackgroundImage(),
    //       Scaffold(
    //         backgroundColor: Colors.transparent,
    //         body: ListView(
    // //   children: [buildheading(context)],
    // // )
    //       ),

    // )]
    // //     body: ListView(
    // //   children: [buildheading(context)],
    // // )
    // );
  }

  Widget buildheading(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: screenHeight * 0.2),
        const CustomText(
          text: "CyberSecure",
          color: const Color(0xFF4E82EA),
          fontSize: 44,
          fontStyle: null,
          fontfamily: '',
        ),
        SizedBox(height: screenHeight * 0.08),
        const CustomText(
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
          height: screenHeight * 0.1,
        ),
        buildtextfiled(
          // 'assets/User.png',
          "Name",
          context,
          "Rahul Yadav",
          false,
        ),
        buildtextfiled(
          // 'assets/phoneNumber.png',
          "Phone Number",
          context,
          "9058-958-389",
          false,
        ),
        button("Sign In", 20.0, 300.0, context, Login())
      ],
    );
  }
}
