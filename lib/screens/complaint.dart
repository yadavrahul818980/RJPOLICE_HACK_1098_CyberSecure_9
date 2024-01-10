import 'package:cyber_secure/screens/Utilities.dart';
import 'package:cyber_secure/screens/incident.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';


class ComplaintPage extends StatefulWidget {
  const ComplaintPage({super.key});

  @override
  State<ComplaintPage> createState() => _ComplaintPageState();
}

class _ComplaintPageState extends State<ComplaintPage> {
  File? _image;
  Future _getImageFromCamera() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.camera);

    setState(() {
      _image = pickedFile != null ? File(pickedFile.path) : null;
    });
  }

  Future _getImageFromGallery() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);

    setState(() {
      _image = pickedFile != null ? File(pickedFile.path) : null;
    });
  }
  @override
  Widget build(BuildContext context) {
    final sheight=MediaQuery.of(context).size.height;
    final swidth=MediaQuery.of(context).size.width;


    return Scaffold(
      body: SafeArea(
      child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/Ellipse 873.png',scale: 5,),
                  Expanded(
                    child: Divider(
                      color: Colors.grey,
                      thickness: 1.25,// Color of the divider line
                    ),
                  ),
                  Image.asset('assets/Ellipse 873.png',scale: 5,),
                  Expanded(
                    child: Divider(
                      color: Colors.grey,
                      thickness: 1.25,// Color of the divider line
                    ),
                  ),
                  Image.asset('assets/Ellipse 874.png',scale: 3.7,),
                ],
              ),
            ),
            SizedBox(height: sheight*0.03,),
        Row(
        children: [
          IconButton(
              onPressed:(){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const page()));
              },
              icon: const Icon(Icons.arrow_back_ios)
          ),
        Padding(
          padding: EdgeInsets.only(left: 40),
          child: Text('Complaint Details',
            style: TextStyle(
              color: Color(0xff00194A),
              fontSize: 25,
              fontWeight: FontWeight.w500,
            ),),
        ),
        ],
      ),

            SizedBox(height: sheight*0.03,),

            UserInput('Name'),

            SizedBox(height: sheight*0.04,),

            UserInput('Gender'),

            SizedBox(height: sheight*0.03,),

            Text('Address',
              style: TextStyle(
                color: Color(0xff00194A),
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),),

            SizedBox(height: sheight*0.03,),

            Row(
              children: [
                Expanded(child: UserInput('House No.')),
                SizedBox(width: swidth*0.03,),
                Expanded(child: UserInput('Country'))
              ],
            ),

            SizedBox(height: sheight*0.03,),

            Row(
              children: [
                Flexible(child: UserInput('Street Name'),flex:3),
                SizedBox(width: swidth*0.03,),
                Flexible(child: UserInput('State'),flex:2)
              ],
            ),

            SizedBox(height: sheight*0.03,),

            Row(
              children: [
                Flexible(child: UserInput('District'),flex:4),
                SizedBox(width: swidth*0.03,),
                Flexible(child: UserInput('Nearest Police Station'),flex:7)
              ],
            ),

            SizedBox(height: sheight*0.04,),

            Center(
              child: GestureDetector(
                onTap: () {
                  _showImagePickerDialog(context);
                },
                child: Container(
                  height: sheight * 0.19,
                  child: CustomPaint(
                    painter: DottedBorderPainter(
                      color: Color(0xff00194A),
                      strokeWidth: 2,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(33, 20, 33, 0),
                      child: _image != null
                          ? Image.file(_image!, scale: 4)
                          : Column(
                        children: [
                          Image.asset('assets/document-upload.png', scale: 3),
                          SizedBox(height: sheight * 0.025),
                          Text(
                            'Upload Your Aadhar Card',
                            style: TextStyle(
                              color: Color(0xff00194A),
                              fontSize: 23,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: sheight*0.035,),

            Container(
              width: swidth,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(
                      builder: (context)=> ComplaintPage()));
                },
                style: TextButton.styleFrom(
                  backgroundColor: Color(0xff4E82EA),
                  padding: EdgeInsets.all(15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0), // Adjust the border radius value
                  ),
                ),
                child: const Text(
                  'Continue',
                  style: TextStyle(
                    color: Colors.white, // Text color
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),




      ],
    ),),),
    ),);
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
