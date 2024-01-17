// // import 'package:flutter/material.dart';
// // import 'package:fl_chart/fl_chart.dart';

// // void main() => runApp(MyApp());

// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       home: Scaffold(
// //         appBar: AppBar(
// //           title: Text('Crime Data Bar Chart'),
// //         ),
// //         body: Padding(
// //           padding: const EdgeInsets.all(16.0),
// //           child: BarChartSample(),
// //         ),
// //       ),
// //     );
// //   }
// // }

// // class BarChartSample extends StatelessWidget {
// //   final List<String> typesOfOffence = [
// //     'Abetment of Suicide',
// //     'Cyber Stalking/Bullying',
// //     'Data theft',
// //     'Fraud',
// //     'Cheating',
// //     'Forgery',
// //     'Defamation/Morphing',
// //     'Fake Profile',
// //     'Counterfeiting',
// //     'Cyber Blackmailing/Threatening',
// //     'Fake News on Social Media',
// //     'Other Offences (r/w IT Act)',
// //   ];

// //   final List<List<int>> casesData = [
// //     [0, 7, 8, 10, 10],
// //     [542, 739, 777, 872, 1176],
// //     [307, 106, 285, 98, 170],
// //     [3466, 3353, 6233, 10395, 14007],
// //     [1896, 2051, 3393, 4480, 6343],
// //     [99, 260, 512, 582, 198],
// //     [12, 18, 19, 51, 31],
// //     [86, 78, 87, 149, 123],
// //     [1, 2, 5, 9, 2],
// //     [311, 223, 372, 303, 689],
// //     [170, 97, 190, 578, 179],
// //     [1086, 1713, 1849, 2674, 2456],
// //   ];

// //   @override
// //   Widget build(BuildContext context) {
// //     return BarChart(
// //       BarChartData(
// //         gridData: FlGridData(show: false),
// //         titlesData: FlTitlesData(
// //           leftTitles: SideTitles(showTitles: true),
// //           bottomTitles: SideTitles(
// //             showTitles: true,
// //             rotateAngle: 45,
// //             getTitles: (double value) {
// //               if (value >= 0 && value < typesOfOffence.length) {
// //                 return typesOfOffence[value.toInt()];
// //               }
// //               return '';
// //             },
// //           ),
// //         ),
// //         borderData: FlBorderData(show: true),
// //         barGroups: _buildBarGroups(),
// //       ),
// //     );
// //   }

// //   List<BarChartGroupData> _buildBarGroups() {
// //     List<BarChartGroupData> barGroups = [];

// //     for (int i = 0; i < typesOfOffence.length; i++) {
// //       List<BarChartRodData> bars = [];
// //       for (int j = 0; j < casesData[i].length; j++) {
// //         bars.add(BarChartRodData(
// //           toY: casesData[i][j].toDouble(),
// //           color: _getColor(j),
// //         ));
// //       }

// //       barGroups.add(BarChartGroupData(
// //         x: i,
// //         barsSpace: 4,
// //         barRods: bars,
// //         showingTooltipIndicators: [0],
// //       ));
// //     }

// //     return barGroups;
// //   }

// //   Color _getColor(int yearIndex) {
// //     // You can customize the colors based on the year index here
// //     // For simplicity, I'm using a predefined list of colors
// //     List<Color> colors = [
// //       Colors.blue,
// //       Colors.red,
// //       Colors.green,
// //       Colors.orange,
// //       Colors.purple,
// //     ];

// //     return colors[yearIndex % colors.length];
// //   }
// // }



// import 'package:flutter/material.dart';
// import 'package:fl_chart/fl_chart.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Crime Data Bar Chart'),
//         ),
//         body: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: BarChartSample(),
//         ),
//       ),
//     );
//   }
// }

// class BarChartSample extends StatelessWidget {
//   final List<String> typesOfOffence = [
//     'Abetment of Suicide',
//     'Cyber Stalking/Bullying',
//     'Data theft',
//     'Fraud',
//     'Cheating',
//     'Forgery',
//     'Defamation/Morphing',
//     'Fake Profile',
//     'Counterfeiting',
//     'Cyber Blackmailing/Threatening',
//     'Fake News on Social Media',
//     'Other Offences (r/w IT Act)',
//   ];

//   final List<List<int>> casesData = [
//     [0, 7, 8, 10, 10],
//     [542, 739, 777, 872, 1176],
//     [307, 106, 285, 98, 170],
//     [3466, 3353, 6233, 10395, 14007],
//     [1896, 2051, 3393, 4480, 6343],
//     [99, 260, 512, 582, 198],
//     [12, 18, 19, 51, 31],
//     [86, 78, 87, 149, 123],
//     [1, 2, 5, 9, 2],
//     [311, 223, 372, 303, 689],
//     [170, 97, 190, 578, 179],
//     [1086, 1713, 1849, 2674, 2456],
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return BarChart(
//       BarChartData(
//         gridData: FlGridData(show: false),
//         titlesData: FlTitlesData(
//   leftTitles: SideTitles(showTitles: true),
//   bottomTitles: SideTitles(
//     showTitles: true,
//     rotateAngle: 45,
//     getTitles: (double value) {
//       if (value >= 0 && value < typesOfOffence.length) {
//         return typesOfOffence[value.toInt()];
//       }
//       return '';
//     },
//   ),
// ),

      
//         borderData: FlBorderData(show: true),
//         barGroups: _buildBarGroups(),
//       ),
//     );
//   }

//   List<BarChartGroupData> _buildBarGroups() {
//     List<BarChartGroupData> barGroups = [];

//     for (int i = 0; i < typesOfOffence.length; i++) {
//       List<BarChartRodData> bars = [];
//       for (int j = 0; j < casesData[i].length; j++) {
//         bars.add(BarChartRodData(
//           toY: casesData[i][j].toDouble(),
//           color: _getColor(j),
//         ));
//       }

//       barGroups.add(BarChartGroupData(
//         x: i,
//         barsSpace: 4,
//         barRods: bars,
//         showingTooltipIndicators: [0],
//       ));
//     }

//     return barGroups;
//   }

//   Color _getColor(int yearIndex) {
//     List<Color> colors = [
//       Colors.blue,
//       Colors.red,
//       Colors.green,
//       Colors.orange,
//       Colors.purple,
//     ];

//     return colors[yearIndex % colors.length];
//   }
// }
