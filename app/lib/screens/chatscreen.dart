// // // import 'package:chat_gpt_sdk/chat_gpt_sdk.dart';
// // // import 'package:flutter/material.dart';
// // // import 'package:flutter_dotenv/flutter_dotenv.dart';
// // // import 'package:velocity_x/velocity_x.dart';

// // // import 'chatmessage.dart';
// // // import 'threedots.dart';

// // // class ChatScreen extends StatefulWidget {
// // //   const ChatScreen({super.key});

// // //   @override
// // //   State<ChatScreen> createState() => _ChatScreenState();
// // // }

// // // class _ChatScreenState extends State<ChatScreen> {
// // //   final TextEditingController _controller = TextEditingController();
// // //   final List<ChatMessage> _messages = [];
// // //   late OpenAI? chatGPT;
// // //   bool _isImageSearch = false;

// // //   bool _isTyping = false;

// // //   @override
// // //   void initState() {
// // //     chatGPT = OpenAI.instance.build(
// // //         token: "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",
// // //         baseOption: HttpSetup(receiveTimeout: Duration(seconds: 60)));
// // //     super.initState();
// // //   }

// // //   @override
// // //   void dispose() {
// // //     chatGPT?.close();
// // //     chatGPT?.genImgClose();
// // //     super.dispose();
// // //   }

// // //   // Link for api - https://beta.openai.com/account/api-keys

// // //   void _sendMessage() async {
// // //     if (_controller.text.isEmpty) return;
// // //     ChatMessage message = ChatMessage(
// // //       text: _controller.text,
// // //       sender: "user",
// // //       isImage: false,
// // //     );

// // //     setState(() {
// // //       _messages.insert(0, message);
// // //       _isTyping = true;
// // //     });

// // //     _controller.clear();

// // //     if (_isImageSearch) {
// // //       final request = GenerateImage(message.text, 1, size: "256x256");

// // //       final response = await chatGPT!.generateImage(request);
// // //       Vx.log(response!.data!.last!.url!);
// // //       insertNewData(response.data!.last!.url!, isImage: true);
// // //     } else {
// // //       final request =
// // //           CompleteText(prompt: message.text, model: "gpt-3.5-turbo");

// // //       final response = await chatGPT!.onCompletion(request: request);
// // //       Vx.log(response!.choices[0].text);
// // //       insertNewData(response.choices[0].text, isImage: false);
// // //     }
// // //   }

// // //   void insertNewData(String response, {bool isImage = false}) {
// // //     ChatMessage botMessage = ChatMessage(
// // //       text: response,
// // //       sender: "bot",
// // //       isImage: isImage,
// // //     );

// // //     setState(() {
// // //       _isTyping = false;
// // //       _messages.insert(0, botMessage);
// // //     });
// // //   }

// // //   Widget _buildTextComposer() {
// // //     return Row(
// // //       children: [
// // //         Expanded(
// // //           child: TextField(
// // //             controller: _controller,
// // //             onSubmitted: (value) => _sendMessage(),
// // //             decoration: const InputDecoration.collapsed(
// // //                 hintText: "Question/description"),
// // //           ),
// // //         ),
// // //         ButtonBar(
// // //           children: [
// // //             IconButton(
// // //               icon: const Icon(Icons.send),
// // //               onPressed: () {
// // //                 _isImageSearch = false;
// // //                 _sendMessage();
// // //               },
// // //             ),
// // //             TextButton(
// // //                 onPressed: () {
// // //                   _isImageSearch = true;
// // //                   _sendMessage();
// // //                 },
// // //                 child: const Text("Generate Image"))
// // //           ],
// // //         ),
// // //       ],
// // //     ).px16();
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //         appBar: AppBar(title: const Text("ChatGPT & Dall-E2 Demo")),
// // //         body: SafeArea(
// // //           child: Column(
// // //             children: [
// // //               Flexible(
// // //                   child: ListView.builder(
// // //                 reverse: true,
// // //                 padding: Vx.m8,
// // //                 itemCount: _messages.length,
// // //                 itemBuilder: (context, index) {
// // //                   return _messages[index];
// // //                 },
// // //               )),
// // //               if (_isTyping) const ThreeDots(),
// // //               const Divider(
// // //                 height: 1.0,
// // //               ),
// // //               Container(
// // //                 decoration: BoxDecoration(
// // //                   color: context.cardColor,
// // //                 ),
// // //                 child: _buildTextComposer(),
// // //               )
// // //             ],
// // //           ),
// // //         ));
// // //   }
// // // }







// // // import 'package:chat_gpt_sdk/chat_gpt_sdk.dart';
// // // import 'package:flutter/material.dart';
// // // import 'package:flutter_dotenv/flutter_dotenv.dart';
// // // import 'package:velocity_x/velocity_x.dart';

// // // import 'chatmessage.dart';
// // // import 'threedots.dart';

// // // class ChatScreen extends StatefulWidget {
// // //   const ChatScreen({Key? key}) : super(key: key);

// // //   @override
// // //   State<ChatScreen> createState() => _ChatScreenState();
// // // }

// // // class _ChatScreenState extends State<ChatScreen> {
// // //   final TextEditingController _controller = TextEditingController();
// // //   final List<ChatMessage> _messages = [];
// // //   late OpenAI? chatGPT;
// // //   bool _isImageSearch = false;
// // //   bool _isTyping = false;

// // //   @override
// // //   void initState() {
// // //     chatGPT = OpenAI.instance.build(
// // //       token: "YOUR_OPENAI_API_KEY",
// // //       baseOption: HttpSetup(receiveTimeout: const Duration(seconds: 60)),
// // //     );
// // //     super.initState();
// // //   }

// // //   @override
// // //   void dispose() {
// // //     chatGPT?.close();
// // //     chatGPT?.genImgClose();
// // //     super.dispose();
// // //   }

// // //   void _sendMessage() async {
// // //     if (_controller.text.isEmpty) return;
// // //     ChatMessage message = ChatMessage(
// // //       text: _controller.text,
// // //       sender: "user",
// // //       isImage: false,
// // //     );

// // //     setState(() {
// // //       _messages.insert(0, message);
// // //       _isTyping = true;
// // //     });

// // //     _controller.clear();

// // //     try {
// // //       if (_isImageSearch) {
// // //         final request = GenerateImage(message.text, 1, size: "256x256");
// // //         final response = await chatGPT!.generateImage(request);
// // //         if (response != null) {
// // //           insertNewData(response.data!.last!.url!, isImage: true);
// // //         }
// // //       } else {
// // //         final request =
// // //             CompleteText(prompt: message.text, model: "gpt-3.5-turbo");
// // //         final response = await chatGPT!.onCompletion(request: request);
// // //         if (response != null) {
// // //           insertNewData(response.choices[0].text, isImage: false);
// // //         }
// // //       }
// // //     } catch (e) {
// // //       print("Error: $e");
// // //       // Handle OpenAI API errors here
// // //       if (e is OpenAIException) {
// // //         if (e.error?.code == "billing_hard_limit_reached") {
// // //           showDialog(
// // //             context: context,
// // //             builder: (BuildContext context) {
// // //               return AlertDialog(
// // //                 title: Text("Billing Hard Limit Reached"),
// // //                 content: Text("You have reached your billing hard limit."),
// // //                 actions: [
// // //                   TextButton(
// // //                     onPressed: () => Navigator.of(context).pop(),
// // //                     child: Text("OK"),
// // //                   ),
// // //                 ],
// // //               );
// // //             },
// // //           );
// // //         }
// // //         // Handle other OpenAI exceptions as needed
// // //       }
// // //       // Handle other general exceptions here
// // //     } finally {
// // //       setState(() {
// // //         _isTyping = false;
// // //       });
// // //     }
// // //   }

// // //   void insertNewData(String response, {bool isImage = false}) {
// // //     ChatMessage botMessage = ChatMessage(
// // //       text: response,
// // //       sender: "bot",
// // //       isImage: isImage,
// // //     );

// // //     setState(() {
// // //       _messages.insert(0, botMessage);
// // //     });
// // //   }

// // //   Widget _buildTextComposer() {
// // //     return Row(
// // //       children: [
// // //         Expanded(
// // //           child: TextField(
// // //             controller: _controller,
// // //             onSubmitted: (value) => _sendMessage(),
// // //             decoration: const InputDecoration.collapsed(
// // //                 hintText: "Question/description"),
// // //           ),
// // //         ),
// // //         ButtonBar(
// // //           children: [
// // //             IconButton(
// // //               icon: const Icon(Icons.send),
// // //               onPressed: () {
// // //                 _isImageSearch = false;
// // //                 _sendMessage();
// // //               },
// // //             ),
// // //             TextButton(
// // //                 onPressed: () {
// // //                   _isImageSearch = true;
// // //                   _sendMessage();
// // //                 },
// // //                 child: const Text("Generate Image"))
// // //           ],
// // //         ),
// // //       ],
// // //     ).px16();
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       appBar: AppBar(title: const Text("ChatGPT & Dall-E2 Demo")),
// // //       body: SafeArea(
// // //         child: Column(
// // //           children: [
// // //             Flexible(
// // //               child: ListView.builder(
// // //                 reverse: true,
// // //                 padding: Vx.m8,
// // //                 itemCount: _messages.length,
// // //                 itemBuilder: (context, index) {
// // //                   return _messages[index];
// // //                 },
// // //               ),
// // //             ),
// // //             if (_isTyping) const ThreeDots(),
// // //             const Divider(
// // //               height: 1.0,
// // //             ),
// // //             Container(
// // //               decoration: BoxDecoration(
// // //                 color: context.cardColor,
// // //               ),
// // //               child: _buildTextComposer(),
// // //             )
// // //           ],
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }



// // import 'package:chat_gpt_sdk/chat_gpt_sdk.dart';
// // import 'package:flutter/material.dart';
// // import 'package:flutter_dotenv/flutter_dotenv.dart';
// // import 'package:velocity_x/velocity_x.dart';

// // import 'chatmessage.dart';
// // import 'threedots.dart';

// // class ChatScreen extends StatefulWidget {
// //   const ChatScreen({Key? key}) : super(key: key);

// //   @override
// //   State<ChatScreen> createState() => _ChatScreenState();
// // }

// // class _ChatScreenState extends State<ChatScreen> {
// //   final TextEditingController _controller = TextEditingController();
// //   final List<ChatMessage> _messages = [];
// //   late OpenAI? chatGPT;
// //   bool _isImageSearch = false;
// //   bool _isTyping = false;

// //   @override
// //   void initState() {
// //     chatGPT = OpenAI.instance.build(
// //       token: "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",
// //       baseOption: HttpSetup(receiveTimeout: const Duration(seconds: 60)),
// //     );
// //     super.initState();
// //   }

// //   @override
// //   void dispose() {
// //     chatGPT?.close();
// //     chatGPT?.genImgClose();
// //     super.dispose();
// //   }

// //   void _sendMessage() async {
// //     if (_controller.text.isEmpty) return;
// //     ChatMessage message = ChatMessage(
// //       text: _controller.text,
// //       sender: "user",
// //       isImage: false,
// //     );

// //     setState(() {
// //       _messages.insert(0, message);
// //       _isTyping = true;
// //     });

// //     _controller.clear();

// //     try {
// //       if (_isImageSearch) {
// //         final request = GenerateImage(message.text, 1, size: "256x256");
// //         final response = await chatGPT!.generateImage(request);
// //         if (response != null) {
// //           insertNewData(response.data!.last!.url!, isImage: true);
// //         }
// //       } else {
// //         final request =
// //             CompleteText(prompt: message.text, model: "gpt-3.5-turbo");
// //         final response = await chatGPT!.onCompletion(request: request);
// //         if (response != null) {
// //           insertNewData(response.choices[0].text, isImage: false);
// //         }
// //       }
// //     } catch (e) {
// //       print("Error: $e");
// //       // Handle errors here
// //       if (e.toString().contains("billing_hard_limit_reached")) {
// //         showDialog(
// //           context: context,
// //           builder: (BuildContext context) {
// //             return AlertDialog(
// //               title: Text("Billing Hard Limit Reached"),
// //               content: Text("You have reached your billing hard limit."),
// //               actions: [
// //                 TextButton(
// //                   onPressed: () => Navigator.of(context).pop(),
// //                   child: Text("OK"),
// //                 ),
// //               ],
// //             );
// //           },
// //         );
// //       }
// //       // Handle other errors as needed
// //     } finally {
// //       setState(() {
// //         _isTyping = false;
// //       });
// //     }
// //   }

// //   void insertNewData(String response, {bool isImage = false}) {
// //     ChatMessage botMessage = ChatMessage(
// //       text: response,
// //       sender: "bot",
// //       isImage: isImage,
// //     );

// //     setState(() {
// //       _messages.insert(0, botMessage);
// //     });
// //   }

// //   Widget _buildTextComposer() {
// //     return Row(
// //       children: [
// //         Expanded(
// //           child: TextField(
// //             controller: _controller,
// //             onSubmitted: (value) => _sendMessage(),
// //             decoration: const InputDecoration.collapsed(
// //                 hintText: "Question/description"),
// //           ),
// //         ),
// //         ButtonBar(
// //           children: [
// //             IconButton(
// //               icon: const Icon(Icons.send),
// //               onPressed: () {
// //                 _isImageSearch = false;
// //                 _sendMessage();
// //               },
// //             ),
// //             TextButton(
// //                 onPressed: () {
// //                   _isImageSearch = true;
// //                   _sendMessage();
// //                 },
// //                 child: const Text("Generate Image"))
// //           ],
// //         ),
// //       ],
// //     ).px16();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(title: const Text("ChatGPT & Dall-E2 Demo")),
// //       body: SafeArea(
// //         child: Column(
// //           children: [
// //             Flexible(
// //               child: ListView.builder(
// //                 reverse: true,
// //                 padding: Vx.m8,
// //                 itemCount: _messages.length,
// //                 itemBuilder: (context, index) {
// //                   return _messages[index];
// //                 },
// //               ),
// //             ),
// //             if (_isTyping) const ThreeDots(),
// //             const Divider(
// //               height: 1.0,
// //             ),
// //             Container(
// //               decoration: BoxDecoration(
// //                 color: context.cardColor,
// //               ),
// //               child: _buildTextComposer(),
// //             )
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }


// import 'dart:developer';

// import 'package:cyber_secure/constants/constants.dart';
// import 'package:cyber_secure/providers/chat_providers.dart';
// import 'package:cyber_secure/services/services.dart';
// import 'package:cyber_secure/widgets/chat_widget.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';
// import 'package:provider/provider.dart';

// import '../providers/models_provider.dart';
// import '../services/assets_manager.dart';
// import '../widgets/text_widget.dart';

// class ChatScreen extends StatefulWidget {
//   const ChatScreen({super.key});

//   @override
//   State<ChatScreen> createState() => _ChatScreenState();
// }

// class _ChatScreenState extends State<ChatScreen> {
//   bool _isTyping = false;

//   late TextEditingController textEditingController;
//   late ScrollController _listScrollController;
//   late FocusNode focusNode;
//   @override
//   void initState() {
//     _listScrollController = ScrollController();
//     textEditingController = TextEditingController();
//     focusNode = FocusNode();
//     super.initState();
//   }

//   @override
//   void dispose() {
//     _listScrollController.dispose();
//     textEditingController.dispose();
//     focusNode.dispose();
//     super.dispose();
//   }

//   // List<ChatModel> chatList = [];
//   @override
//   Widget build(BuildContext context) {
//     final modelsProvider = Provider.of<ModelsProvider>(context);
//     final chatProvider = Provider.of<ChatProvider>(context);
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 2,
//         leading: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Image.asset(AssetsManager.openaiLogo),
//         ),
//         title: const Text("ChatGPT"),
//         actions: [
//           IconButton(
//             onPressed: () async {
//               await Services.showModalSheet(context: context);
//             },
//             icon: const Icon(Icons.more_vert_rounded, color: Colors.white),
//           ),
//         ],
//       ),
//       body: SafeArea(
//         child: Column(
//           children: [
//             Flexible(
//               child: ListView.builder(
//                   controller: _listScrollController,
//                   itemCount: chatProvider.getChatList.length, //chatList.length,
//                   itemBuilder: (context, index) {
//                     return ChatWidget(
//                       msg: chatProvider
//                           .getChatList[index].msg, // chatList[index].msg,
//                       chatIndex: chatProvider.getChatList[index]
//                           .chatIndex, //chatList[index].chatIndex,
//                       shouldAnimate:
//                           chatProvider.getChatList.length - 1 == index,
//                     );
//                   }),
//             ),
//             if (_isTyping) ...[
//               const SpinKitThreeBounce(
//                 color: Color.fromARGB(255, 194, 232, 241),
//                 size: 18,
//               ),
//             ],
//             const SizedBox(
//               height: 15,
//             ),
//             Material(
//               color: cardColor,
//               child: Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Row(
//                   children: [
//                     Expanded(
//                       child: TextField(
//                         focusNode: focusNode,
//                         style: const TextStyle(color: Colors.white),
//                         controller: textEditingController,
//                         onSubmitted: (value) async {
//                           await sendMessageFCT(
//                               modelsProvider: modelsProvider,
//                               chatProvider: chatProvider);
//                         },
//                         decoration: const InputDecoration.collapsed(
//                             hintText: "How can I help you",
//                             hintStyle: TextStyle(color: Colors.grey)),
//                       ),
//                     ),
//                     IconButton(
//                         onPressed: () async {
//                           await sendMessageFCT(
//                               modelsProvider: modelsProvider,
//                               chatProvider: chatProvider);
//                         },
//                         icon: const Icon(
//                           Icons.send,
//                           color: Colors.white,
//                         ))
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   void scrollListToEND() {
//     _listScrollController.animateTo(
//         _listScrollController.position.maxScrollExtent,
//         duration: const Duration(seconds: 2),
//         curve: Curves.easeOut);
//   }

//   Future<void> sendMessageFCT(
//       {required ModelsProvider modelsProvider,
//       required ChatProvider chatProvider}) async {
//     if (_isTyping) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(
//           content: TextWidget(
//             label: "You cant send multiple messages at a time",
//           ),
//           backgroundColor: Colors.red,
//         ),
//       );
//       return;
//     }
//     if (textEditingController.text.isEmpty) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(
//           content: TextWidget(
//             label: "Please type a message",
//           ),
//           backgroundColor: Colors.red,
//         ),
//       );
//       return;
//     }
//     try {
//       String msg = textEditingController.text;
//       setState(() {
//         _isTyping = true;
//         // chatList.add(ChatModel(msg: textEditingController.text, chatIndex: 0));
//         chatProvider.addUserMessage(msg: msg);
//         textEditingController.clear();
//         focusNode.unfocus();
//       });
//       await chatProvider.sendMessageAndGetAnswers(
//           msg: msg, chosenModelId: modelsProvider.getCurrentModel);
//       // chatList.addAll(await ApiService.sendMessage(
//       //   message: textEditingController.text,
//       //   modelId: modelsProvider.getCurrentModel,
//       // ));
//       setState(() {});
//     } catch (error) {
//       log("error $error");
//       ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//         content: TextWidget(
//           label: error.toString(),
//         ),
//         backgroundColor: Colors.red,
//       ));
//     } finally {
//       setState(() {
//         scrollListToEND();
//         _isTyping = false;
//       });
//     }
//   }
// }