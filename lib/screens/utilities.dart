// import 'dart:ui';

import 'package:flutter/material.dart';

// import 'package:shared_preferences/shared_preferences.dart';

Widget button(String text, double height,double  width,BuildContext context, page,void Function() onTapFunction) {
  // final screenHeight = MediaQuery.of(context).size.height;
  // final screenWidth = MediaQuery.of(context).size.width;

  return GestureDetector(
    onTap: () async {
       onTapFunction();
      Navigator.push(context, MaterialPageRoute(builder: (context) => page));
      // onTapFunction();
    },
    child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.00, -1.00),
            end: Alignment(0, 1),
            colors: [Color(0xFF4E82EA), Color(0xFF245BC9)],
          ),
          borderRadius: BorderRadius.all(Radius.circular(7)),
          boxShadow: [
            BoxShadow(),
          ],
        ),
        height: height,
        width: width,
        child: Padding(
          padding: const EdgeInsets.all(7.0),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              // height: 0,
            ),
          ),
        )),
  );
}

// import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  // final String Bold;
  final Color? color;
  final FontStyle? fontStyle;
  final double? fontSize;
  final TextAlign? textAlign;
  final String? fontfamily;

  const CustomText({
    super.key,
    required this.text,
    // this.Bold,
    required this.fontStyle,
    required this.color,
    this.fontSize,
    this.textAlign,
    this.fontfamily,
  });

  @override
  Widget build(BuildContext context) {
    // final screenHeight = MediaQuery.of(context).size.height;
    // final screenWidth = MediaQuery.of(context).size.width;
    return Text(
      text,
      style: TextStyle(
        // fontFamily: ,
        fontWeight: FontWeight.w500,
        fontFamily: fontfamily,
        color: color ?? Colors.white,
        fontSize: fontSize ?? 10,
        fontStyle: fontStyle ?? FontStyle.normal,
      ),
    );
  }
}

class CustomText1 extends StatelessWidget {
  final String text;
  // final String Bold;
  final Color? color;
  final FontStyle? fontStyle;
  final double? fontSize;
  final TextAlign? textAlign;
  final String? fontfamily;

  const CustomText1({
    super.key,
    required this.text,
    // this.Bold,
    required this.fontStyle,
    required this.color,
    this.fontSize,
    this.textAlign,
    this.fontfamily,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        // fontFamily: ,
        fontWeight: FontWeight.w600,
        fontFamily: fontfamily,
        color: color ?? Colors.white,
        fontSize: fontSize ?? 10,
        fontStyle: fontStyle ?? FontStyle.normal,
      ),
    );
  }
}

//  import 'package:flutter/material.dart';

// Widget buildtextfiled(BuildContext context, TextEditingController controller,
//       String hinttext, bool obscure, Null Function() param4,String? Function(String?) validator) {
//     return Container(
//       decoration: BoxDecoration(
//         boxShadow: [
//           BoxShadow(
//             color: const Color.fromRGBO(148, 108, 195, 0.25).withOpacity(0.2),
//             spreadRadius: 2,
//             blurRadius: 5,
//             offset: const Offset(0, 3),
//           ),
//         ],
//       ),
//       margin: const EdgeInsets.all(15),
//       child: TextFormField(
//         controller: controller,
//         obscureText: obscure,
//         // enabled: false,
//         style: const TextStyle(color: Colors.black),
//         decoration: InputDecoration(
//             fillColor: const Color.fromRGBO(238, 238, 238, 1),
//             filled: true,
//             hintText: hinttext,
//             hintStyle: const TextStyle(color: Colors.grey),
//             focusedBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(10),
//                 borderSide: BorderSide.none
//                 // borderSide: const BorderSide(color: Colors.blue),
//                 ),
//             enabledBorder: OutlineInputBorder(
//                 borderRadius: BorderRadius.circular(10),
//                 borderSide: BorderSide.none),
//             // disabledBorder: OutlineInputBorder()

//             // suffixText: "hbchjdbch",

//             suffixStyle: const TextStyle(color: Colors.indigo)),
//              validator: validator,
//       ),
//     );
//   }

Widget buildtextfiled(String image, String text, BuildContext context,
    String hinttext, bool obscure,controller) {
  final screenHeight = MediaQuery.of(context).size.height;
  final screenWidth = MediaQuery.of(context).size.width;
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      // SizedBox(width: 900),
      Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: CustomText(
          text: text,
          color: const Color(0xFF00184A),
          fontSize: 14,
          fontStyle: null,
          fontfamily: '',
        ),
      ),
      Container(
          decoration: BoxDecoration(
              // color: Color(0xFFA0A0A0),
              border: Border(
            bottom: BorderSide(width: 1, color: Color(0xFFA0A0A0)),
          )

              // boxShadow: [
              //   BoxShadow(
              //       // color: Color.fromARGB(62, 254, 254, 254).withOpacity(0.2),
              //       // spreadRadius: 2,
              //       // blurRadius: 5,
              //       // offset: const Offset(0, 3),
              //       ),
              // ],
              ),
          // margin: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: screenWidth * 0.9,
            child: Row(children: [
              Image.asset(
                image,
                height: screenHeight * 0.032,
              ),
              SizedBox(
                width: screenWidth * 0.8,
                child: TextFormField(
                  controller: controller,
                  obscureText: obscure,
                  style: const TextStyle(color: Colors.black),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a valid value';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    fillColor: Color.fromARGB(0, 45, 76, 130),
                    filled: true,
                    hintText: hinttext,
                    hintStyle: const TextStyle(color: Color(0x4C172A48)),
                    // border:
                    // focusedBorder: OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(10),
                    //   borderSide: BorderSide(color: Color(0xFFA0A0A0)),
                    // ),
                    // enabledBorder: OutlineInputBorder(
                    //   borderRadius: BorderRadius.circular(2),
                    //   borderSide: BorderSide.none,
                    // ),
                    // suffixStyle: const TextStyle(color: Colors.indigo),
                  ),
                ),
              ),
            ]),
          ))
    ],
  );
}

Widget optionBox(image, text1, text2, height, context, page, scale) {
  final screenHeight = MediaQuery.of(context).size.height;
  final screenWidth = MediaQuery.of(context).size.width;

  return GestureDetector(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => page));
    },
    child: Container(
        height: screenHeight * height,
        child: Padding(
          padding: const EdgeInsets.all(7.0),
          child: Column(
            children: [
              Image.asset(
                image,
                scale: scale,
              ),
              Text(
                text1,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF00184A),
                  fontSize: 12,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  // height: 0,
                ),
              ),
              Text(
                text2,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF00184A),
                  fontSize: 12,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  // height: 0,
                ),
              ),
            ],
          ),
        )),
  );
}

Widget newsBox(image, text1, height, width, h2, context, page) {
  final screenHeight = MediaQuery.of(context).size.height;
  final screenWidth = MediaQuery.of(context).size.width;

  return GestureDetector(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => page));
    },
    child: Container(
        height: screenHeight * height,
        width: screenWidth * width,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
        child: Padding(
          padding: const EdgeInsets.all(7.0),
          child: Column(
            children: [
              Container(
                height: screenHeight * h2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // Image.asset(
              //   image,
              //   scale: scale,
              // ),
              Text(
                text1,
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color(0xFF00184A),
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                  // height: 0,
                ),
              ),
              // Text(
              //   text2,
              //   textAlign: TextAlign.center,
              //   style: TextStyle(
              //     color: Color(0xFF00184A),
              //     fontSize: 12,
              //     fontFamily: 'Poppins',
              //     fontWeight: FontWeight.w400,
              //     // height: 0,
              //   ),
              // ),
            ],
          ),
        )),
  );
}

Widget newsBox2(image, text1, text2, text3, height, width, h2, context, page) {
  final screenHeight = MediaQuery.of(context).size.height;
  final screenWidth = MediaQuery.of(context).size.width;

  return GestureDetector(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => page));
    },
    child: Container(
        height: screenHeight * height,
        width: screenWidth * width,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
        child: Padding(
          padding: const EdgeInsets.all(7.0),
          child: Column(
            children: [
              Container(
                height: screenHeight * h2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // Image.asset(
              //   image,
              //   scale: scale,
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      width: screenWidth * 0.7,
                      child: Text(
                        text1,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Color(0xFF00184A),
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          // height: 0,
                        ),
                      ),
                    ),
                  ),
                  Icon(
                    Icons.bookmark_border_outlined,
                    size: 22.0,
                  )
                ],
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          text2,
                          style: TextStyle(
                            color: Color(0xFFA0A0A0),
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            // height: 0.12,
                          ),
                        ),
                        Text(
                          text3,
                          style: TextStyle(
                            color: Color(0xFFA0A0A0),
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            // height: 0.12,
                          ),
                        ),
                      ]),
                ),
              )
              // Text(
              //   text2,
              //   textAlign: TextAlign.center,
              //   style: TextStyle(
              //     color: Color(0xFF00184A),
              //     fontSize: 12,
              //     fontFamily: 'Poppins',
              //     fontWeight: FontWeight.w400,
              //     // height: 0,
              //   ),
              // ),
            ],
          ),
        )),
  );
}

Widget searchBar(BuildContext context, String hinttext, bool obscure) {
  final screenHeight = MediaQuery.of(context).size.height;
  final screenWidth = MediaQuery.of(context).size.width;
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    // crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
          decoration: BoxDecoration(
            // color: Color(0xFFA0A0A0),
            borderRadius: BorderRadius.circular(5),
            // color: Colors.black,
            border: Border.all(width: 1, color: Colors.black),
            //   border: Border(
            // bottom: BorderSide(width: 1, color: Color(0xFFA0A0A0)),
            // )

            // boxShadow: [
            //   BoxShadow(
            //       // color: Color.fromARGB(62, 254, 254, 254).withOpacity(0.2),
            //       // spreadRadius: 2,
            //       // blurRadius: 5,
            //       // offset: const Offset(0, 3),
            //       ),
            // ],
          ),
          // margin: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: screenWidth * 0.9,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(children: [
                Image.asset(
                  'assets/search.png',
                  height: screenHeight * 0.032,
                ),
                SizedBox(
                  width: screenWidth * 0.7,
                  child: TextFormField(
                    // controller: controller,
                    obscureText: obscure,
                    style: const TextStyle(color: Colors.black),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a valid value';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      fillColor: Color.fromARGB(0, 45, 76, 130),
                      filled: true,
                      hintText: hinttext,
                      hintStyle: const TextStyle(color: Color(0x4C172A48)),
                      // border:
                      // focusedBorder: OutlineInputBorder(
                      //   borderRadius: BorderRadius.circular(10),
                      //   borderSide: BorderSide(color: Color(0xFFA0A0A0)),
                      // ),
                      // enabledBorder: OutlineInputBorder(
                      //   borderRadius: BorderRadius.circular(2),
                      //   borderSide: BorderSide.none,
                      // ),
                      // suffixStyle: const TextStyle(color: Colors.indigo),
                    ),
                  ),
                ),
                Image.asset(
                  'assets/filter.png',
                  height: screenHeight * 0.032,
                ),
              ]),
            ),
          ))
    ],
  );
}

Widget settingBox(image, text1, context, page) {
  final screenHeight = MediaQuery.of(context).size.height;
  final screenWidth = MediaQuery.of(context).size.width;

  return GestureDetector(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => page));
    },
    child: Container(
        height: screenHeight * 0.1,
        // width: screenWidth * width,
        // decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
        child: Padding(
            padding: const EdgeInsets.all(7.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    image,
                    scale: 1,
                    // height: screenHeight * 0.032,
                  ),
                  SizedBox(width: screenWidth * 0.1),
                  Text(
                    text1,
                    style: TextStyle(
                      color: Color(0xFF00184A),
                      fontSize: 18.37,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                      // height: 0,
                    ),
                  ),
                  SizedBox(width: screenWidth * 0.27),
                  Icon(
                    Icons.arrow_right_sharp,
                    size: 38.0,
                  )
                ],
              ),
            ))),
  );
}

Widget personalInfo(image, text1, text2, context, page) {
  final screenHeight = MediaQuery.of(context).size.height;
  final screenWidth = MediaQuery.of(context).size.width;

  return GestureDetector(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => page));
    },
    child: Container(
        // height: screenHeight * 0.1,
        // width: screenWidth * width,
        // decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
        child: Padding(
            padding: const EdgeInsets.all(7.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    image,
                    scale: 0.8,
                    // height: screenHeight * 0.032,
                  ),
                  SizedBox(width: screenWidth * 0.02),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        text1,
                        style: TextStyle(
                          color: Color(0xFF212121),
                          fontSize: 19,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          // height: 0,
                        ),
                      ),
                      Container(
                        width: screenWidth * 0.5,
                        child: Text(text2,
                            style: TextStyle(
                              color: Color(0xFF727272),
                              fontSize: 13.57,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            )),
                      ),
                    ],
                  ),
                  // SizedBox(width: screenWidth * 0.15),
                  // Icon(
                  //   Icons.arrow_right_sharp,
                  //   size: 38.0,
                  // )
                ],
              ),
            ))),
  );
}
