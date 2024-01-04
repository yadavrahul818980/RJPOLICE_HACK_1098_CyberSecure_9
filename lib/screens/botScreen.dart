// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'dart:developer';

// import 'package:chatgpt_flutter/api_key.dart';
// import 'package:http/http.dart' as http;

// class ChatGPTScreen extends StatefulWidget {
//   @override
//   _ChatGPTScreenState createState() => _ChatGPTScreenState();
// }

// class _ChatGPTScreenState extends State<ChatGPTScreen> {
//   final List<Message> _messages = [];

//   final TextEditingController _textEditingController = TextEditingController();
//   void onSendMessage() async {
//     Message message = Message(text: _textEditingController.text, isMe: true);
//     _textEditingController.clear();

//     setState(() {
//       _messages.insert(0, message);
//     });
//   }
// }

// Widget _buildMessage(Message message) {
//   return Container(
//       margin: EdgeInsets.symmetric(vertical: 10.0),
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
//         child: Column(
//           crossAxisAlignment:
//               message.isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
//           children: <Widget>[
//             Text(
//               message.isMe ? 'You' : 'GPT',
//               style: TextStyle(fontWeight: FontWeight.bold),
//             ),
//             Text(message.text),
//           ],
//         ),
//       ));
// }

// @override 
// Widget build(BuildContext context){
//   return Scaffold(appBar: AppBar(title: Text("CyberMitr"),
//   ),
//   body: Column(children: <Widget>[ 
//       Expanded(child: ListView.builder(itemBuilder: reverse: true,
//       itemCount: _messages.length,
//       itemBuilder:(BuildContext context, int index){
//         return _buildMessage(_messages[index]);
//       },),),
//       Divider(height:1.0),
//       Container( decoration : boxDexaoration,)
//   ],));
// }