import 'package:cyber_secure/screens/home.dart';
import 'package:cyber_secure/screens/navbar.dart';
import 'package:flutter/material.dart';
import 'package:cyber_secure/screens/utilities.dart';
import 'package:cyber_secure/screens/background_img.dart';
import 'package:pinput/pinput.dart';
// import 'package:email_auth/email_auth.dart';
import 'package:cyber_secure/screens/loginscreen.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class otpVerification extends StatefulWidget {
  final String email;
  const otpVerification({Key? key, required this.email}) : super(key: key);

  @override
  State<otpVerification> createState() => _otpVerificationState();
}

class _otpVerificationState extends State<otpVerification> {
  final TextEditingController _otpController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  
  String? errorMessage;
    Future<void> _otpVerify() async {
    final url = Uri.https('cyber-secure.onrender.com', '/v1/auth/verifyOtp');
    // http.post(url,headers:{}, body: json.encode({
    final Map<String, String> requestBody = {
      'email': widget.email,
      'name': _otpController.text,
    };
    try {
      final response = await http.post(
        url,
        headers: <String, String>{'Content-Type': 'application/json'},
        body: jsonEncode(requestBody),
      );

      if (response.statusCode == 200) {

        
        print('Success: ${response.body}');
      } else {
        setState(() {
          errorMessage = 'Invalid OTP. Please try again.';
        });
        print('Failed: ${response.statusCode}');
      }
    } catch (e) {
      setState(() {
        errorMessage = 'error: $e';
      });
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
    final defaultPinTheme = PinTheme(
        width: 60,
        height: 60,
        textStyle: TextStyle(fontSize: 22, color: Colors.black),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13),
            border: Border.all(color: Color(0xFFC2C3CB), width: 1.5)));
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
          text: "Verify Using OTP",
          color: Color(0xFF00184A),
          fontSize: 22,
          fontStyle: null,
          fontfamily: 'Poppins',
        ),
        const CustomText(
          text: "We Have Sent code To Your Phone Number",
          color: Color(0xFFA0A0A0),
          fontSize: 14,
          fontStyle: null,
          fontfamily: 'Poppins',
        ),
        SizedBox(
          height: screenHeight * 0.035,
        ),
        CustomText1(
          text: widget.email,
          fontStyle: null,
          color: Color(0xFFACADB9),
          fontSize: 15,
        ),
        SizedBox(height: screenHeight * 0.035),
        Pinput(
            length: 4,
            defaultPinTheme: defaultPinTheme,
            focusedPinTheme: defaultPinTheme.copyWith(
                decoration: defaultPinTheme.decoration!
                    .copyWith(border: Border.all(color: Color(0xFFC2C3CB))))),
        SizedBox(height: screenHeight * 0.08),
        const CustomText(
          text: "Send Again",
          color: Color(0xFFB1B1B1),
          fontSize: 16,
          fontStyle: null,
          fontfamily: 'Poppins',
        ),
        if (errorMessage != null) // Display error message if it exists
          Text(
            errorMessage!,
            style: TextStyle(
              color: Colors.red,
              fontSize: 16,
            ),
          ),
        SizedBox(height: screenHeight * 0.04),
        // button("Verify", 40.0, 320.0, context, () {
        //   if (errorMessage == null) {
        //   home();
        //   }
        // }, _otpVerify)
        button("Verify", 40.0, 320.0, context,NavBar(), _otpVerify)
      ],
    );
  }
}
