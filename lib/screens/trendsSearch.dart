import 'package:cyber_secure/screens/utilities.dart';
import 'package:flutter/material.dart';

class trendsSearchPage extends StatefulWidget {
  const trendsSearchPage({super.key});

  @override
  State<trendsSearchPage> createState() => _trendsSearchPage();
}

class _trendsSearchPage extends State<trendsSearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [buildheading(context)],
    ));
  }

  Widget buildheading(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          searchBar(context, 'Search Your Fraud Case', false),
          Padding(
            padding: const EdgeInsets.only(left: 17.0, top: 12.0),
            child: CustomText(
              text: 'Suggestion',
              fontStyle: null,
              color: Color(0xFF00184A),
              fontSize: 16,
            ),
          ),
         
        ],
      ),
    );
  }
}
