import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:cyber_secure/screens/utilities.dart';
import 'package:cyber_secure/screens/otpVerification.dart';
import 'package:cyber_secure/screens/background_img.dart';
import 'package:http/http.dart' as http;

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
 
  Future<void> _saveItem() async {
    final url = Uri.https('cyber-secure.onrender.com', '/v1/auth/register');
    // http.post(url,headers:{}, body: json.encode({
    final Map<String, String> requestBody = {
      'email': _emailController.text,
      'name': _nameController.text,
    };
    try {
      final response = await http.post(
        url,
        headers: <String, String>{'Content-Type': 'application/json'},
        body: jsonEncode(requestBody),
      );

      if (response.statusCode == 200) {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  otpVerification(email: _emailController.text),
            ));
      } else {
        print('Failed: ${response.statusCode}');
      }
    } catch (e) {
      print('Error: $e');
    }
  }

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
          _nameController,
        ),
        buildtextfiled(
          'assets/mingcute_idcard-fill.png',
          "Phone Number",
          context,
          "9058-958-389",
          false,
          _emailController,
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
        button("Sign In", 40.0, 320.0, context, otpVerification(email:_emailController.text), 
          _saveItem)
        
      ],
    );
  }
}
