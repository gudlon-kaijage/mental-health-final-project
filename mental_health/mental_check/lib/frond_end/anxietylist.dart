// class AnxietyPage extends StatefulWidget {
//   @override
//   _AnxietyPageState createState() => _AnxietyPageState();
// }

// class _AnxietyPageState extends State<AnxietyPage> {
//   final List<String> titles = [
//     'Title 1',
//     'Title 2',
//     'Title 3',
//     'Title 4',
//     'Title 5',
//     'Title 6',
//     'Title 7',
//     'Title 8',
//   ];

//   final List<String> paragraphs = [
//     'Paragraph 1',
//     'Paragraph 2',
//     'Paragraph 3',
//     'Paragraph 4',
//     'Paragraph 5',
//     'Paragraph 6',
//     'Paragraph 7',
//     'Paragraph 8',
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Anxiety Page'),
//       ),
//       body: ListView.builder(
//         itemCount: titles.length,
//         itemBuilder: (BuildContext context, int index) {
//           return Card(
//             child: Container(
//               padding: EdgeInsets.all(10.0),
//               color: Colors.white,
//               child: Column(
//                 children: [
//                   Container(
//                     padding: EdgeInsets.all(10.0),
//                     color: Colors.blue,
//                     child: Text(
//                       titles[index],
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 18.0,
//                         fontWeight: FontWeight.bold,
//                       ),
//                       textAlign: TextAlign.center,
//                     ),
//                   ),
//                   SizedBox(height: 10.0),
//                   Text(
//                     paragraphs[index],
//                     textAlign: TextAlign.center,
//                   ),
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
