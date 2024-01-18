import 'dart:convert';

import 'package:cyber_secure/main.dart';
import 'package:cyber_secure/screens/guidline.dart';
import 'package:cyber_secure/screens/navbar.dart';
import 'package:flutter/material.dart';
import 'package:cyber_secure/screens/complaint.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:http/http.dart' as http;

class document extends StatefulWidget {
  const document({super.key});

  @override
  State<document> createState() => _documentState();
}

class _documentState extends State<document> {
  File? _image;
  bool _isLoading = false;
  Future _getImageFromCamera() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.camera);

    setState(() {
      // if (pickedFile != null) {
      _image = pickedFile != null ? File(pickedFile.path) : null;
      // _images.add(File(pickedFile.path));
    });
  }

  Future _getImageFromGallery() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    setState(() {
      _image = pickedFile != null ? File(pickedFile.path) : null;
      // if (pickedFile != null) {
      //   _images.add(File(pickedFile.path));
      // }
    });
  }

  Future<void> _uploadImages(String? imagePath) async {
    setState(() {
      bool _isLoading = true;
    });

    // String? accessToken = await getAccessToken();

    // if (accessToken == null) {
    //   return;
    // }

    final url = Uri.parse(
        'https://cyber-secure.onrender.com/v1/importantDocuments?acknowledgementNumber=${PreferencesManager().ack}');
    var request = http.MultipartRequest('POST', url);
    request.headers.addAll({
      'Authorization': 'Bearer ${PreferencesManager().token}',
    });
    print('${PreferencesManager().token}');
    print('${PreferencesManager().ack}');
    // print('${widget.acknowledgementNumber}');

    if (imagePath != null) {
      request.files.add(await http.MultipartFile.fromPath(
          'importantDocuments', _image!.path));
    }
    try {
      final response = await request.send();

      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData =
            json.decode(await response.stream.bytesToString());
        final message = responseData['message'];
        print('Message from API documentUpload: $message');
        print('acknowlwdgementNumber: ${PreferencesManager().ack}');

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(message),
            duration: const Duration(seconds: 3),
          ),
        );
        setState(() {
          _isLoading = false;
        });
        // Continue with your navigation or other actions
      } else {
        print('Failed: ${response.statusCode}');

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
                'Failed to upload document. Status Code: ${response.statusCode}'),
            duration: const Duration(seconds: 3),
          ),
        );
        setState(() {
          _isLoading = false;
        });
      }
    } catch (e) {
      print('Error: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Error uploading document'),
          duration: const Duration(seconds: 3),
        ),
      );
      setState(() {
        _isLoading = false;
      });
    }
  }

  Future<void> _finalSummit() async {
    setState(() {
      _isLoading = true;
    });
    final url = Uri.https('cyber-secure.onrender.com', '/v1/finalSubmit');
    // http.post(url,headers:{}, body: json.encode({

    final Map<String, String> requestBody = {
      'acknowledgementNumber': PreferencesManager().ack,
      // 'name': _nameController.text,
    };
    try {
      final response = await http.post(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json',
          'Authorization': 'Bearer ${PreferencesManager().token}'
        },
        body: jsonEncode(requestBody),
      );

      //
      print(response.statusCode);
      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = json.decode(response.body);
        final message = responseData['message'];

        print('Message from API: $message');
        // Update UI to show success message or navigate to another screen
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(message),
            duration: const Duration(seconds: 3),
          ),
        );
        // prefs.setString('email', _emailController.text);
        // prefs.setString('name', _nameController.text);
        // PreferencesManager().email = _emailController.text;
        // PreferencesManager().name = _nameController.text;

        // if (.isNotEmpty) {
        //   prefs.setString('token', );
        //   print('Token stored in prefs: $actualAccessToken');
        // } else {
        //   // Handle the case where the token is empty
        //   print('Token is empty');
        // }

        setState(() {
          _isLoading = false;
        });
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => NavBar(),
            ));
      } else {
        final Map<String, dynamic> responseData = json.decode(response.body);
        final message = responseData['message'];
        print('Failed: $message');
        // Update UI to show success message or navigate to another screen
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(message),
            duration: const Duration(seconds: 3),
          ),
        );
        setState(() {
          _isLoading = false;
        });
        // print('Failed: ${response.statusCode}');
      }
    } catch (e) {
      print('Error: $e');
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final sheight = MediaQuery.of(context).size.height;
    final swidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/Ellipse 873.png',
                        scale: 5,
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.grey,
                          thickness: 1.25, // Color of the divider line
                        ),
                      ),
                      Image.asset(
                        'assets/Ellipse 873.png',
                        scale: 5,
                      ),
                      Expanded(
                        child: Divider(
                          color: Colors.grey,
                          thickness: 1.25, // Color of the divider line
                        ),
                      ),
                      Image.asset(
                        'assets/Ellipse 873.png',
                        scale: 5,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: sheight * 0.03,
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const NavBar()));
                        },
                        icon: const Icon(Icons.arrow_back_ios)),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        'Important Documents',
                        style: TextStyle(
                          color: Color(0xff00194A),
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: sheight * 0.04,
                ),
                GestureDetector(
                    onTap: () {
                      _showImagePickerDialog(context);
                    },
                    child: Image.asset(
                      'assets/evidence.png',
                      scale: 4,
                    )),
                SizedBox(height: sheight * 0.05),
                Container(
                  width: swidth,
                  child: ElevatedButton(
                    onPressed: () {
                      _uploadImages(_image?.path);
                      // Navigator.pushReplacement(context,
                      //     MaterialPageRoute(builder: (context) => NavBar()));
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xff4E82EA),
                      padding: EdgeInsets.all(5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            10.0), // Adjust the border radius value
                      ),
                    ),
                    child: const Text(
                      'Submit',
                      style: TextStyle(
                        color: Colors.white, // Text color
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: sheight * 0.01,
                ),
                Container(
                  width: swidth,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => NavBar()));
                      // _uploadImage(_image?.path);
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xff4E82EA),
                      padding: EdgeInsets.all(5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            10.0), // Adjust the border radius value
                      ),
                    ),
                    child: const Text(
                      'Upload Images',
                      style: TextStyle(
                        color: Colors.white, // Text color
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: sheight * 0.05),
                Container(
                  width: swidth,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => guide()));
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xff4E82EA),
                      padding: EdgeInsets.all(12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            10.0), // Adjust the border radius value
                      ),
                    ),
                    child: const Text(
                      'Checkout the list of all the important Documents',
                      style: TextStyle(
                        color: Colors.white, // Text color
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                SizedBox(height: sheight * 0.019),
                // _images.isNotEmpty
                //     ? SizedBox(
                //         height: sheight * 0.2,
                //         child: ListView.builder(
                //           scrollDirection: Axis.horizontal,
                //           itemCount: _images.length,
                //           itemBuilder: (context, index) {
                //             return Padding(
                //               padding: const EdgeInsets.all(8.0),
                //               child: Image.file(
                //                 _images[index],
                //                 width: swidth * 0.2,
                //                 height: sheight * 0.2,
                //               ),
                //             );
                //           },
                //         ),
                //       )
                // : Container(),
                SizedBox(height: sheight * 0.01),
                Container(
                  width: swidth,
                  child: ElevatedButton(
                    onPressed: () {
                      _finalSummit();
                      // Navigator.pushReplacement(context,
                      //     MaterialPageRoute(builder: (context) => document()));
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xff4E82EA),
                      padding: EdgeInsets.all(5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            10.0), // Adjust the border radius value
                      ),
                    ),
                    child: const Text(
                      'Submit',
                      style: TextStyle(
                        color: Colors.white, // Text color
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showImagePickerDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Select Image Source'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: Icon(Icons.camera),
                title: Text('Camera'),
                onTap: () {
                  Navigator.pop(context);
                  _getImageFromCamera();
                },
              ),
              ListTile(
                leading: Icon(Icons.image),
                title: Text('Gallery'),
                onTap: () {
                  Navigator.pop(context);
                  _getImageFromGallery();
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
