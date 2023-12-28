import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

Widget button(text, height, width, context, page) {
  return GestureDetector(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => page));
    },
    child: SizedBox(
      height: height,
      width: width,
      child:CustomText(text: text, fontSize: 18,fontStyle:null, color:Colors.white)
      // child: Image.asset(
      //   image,
      //   scale: 0.9,
      // ),
    ),
  );
}

// import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color? color;
  final FontStyle? fontStyle;
  final double? fontSize;
  final TextAlign? textAlign;
  final String? fontfamily;

  const CustomText({
    super.key,
    required this.text,
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

Widget buildtextfiled(
    String text, BuildContext context, String hinttext, bool obscure) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      // SizedBox(width: 900),
      Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: CustomText(
          text: text,
          color: const Color(0xFF00184A),
          fontSize: 14,
          fontStyle: null,
          fontfamily: '',
        ),
      ),
      Container(
        decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 1))

            // boxShadow: [
            //   BoxShadow(
            //       // color: Color.fromARGB(62, 254, 254, 254).withOpacity(0.2),
            //       // spreadRadius: 2,
            //       // blurRadius: 5,
            //       // offset: const Offset(0, 3),
            //       ),
            // ],
            ),
        margin: const EdgeInsets.all(8.0),
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
            fillColor: Color.fromARGB(0, 178, 199, 236),
            filled: true,
            hintText: hinttext,
            hintStyle: const TextStyle(color: Colors.grey),
            // focusedBorder: OutlineInputBorder(
            //   borderRadius: BorderRadius.circular(10),
            //   borderSide: BorderSide.none,
            // ),
            // enabledBorder: OutlineInputBorder(
            //   borderRadius: BorderRadius.circular(10),
            //   borderSide: BorderSide.none,
            // ),
            // suffixStyle: const TextStyle(color: Colors.indigo),
          ),
        ),
      ),
    ],
  );
}
