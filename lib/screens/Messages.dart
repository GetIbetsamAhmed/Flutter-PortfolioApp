import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolioapp/constants/constants.dart';
import 'package:portfolioapp/smartWidgets/smartWidget.dart';

// class MessageScreen extends StatefulWidget {
//   final String name;
//   const MessageScreen({Key? key, this.name = ""}) : super(key: key);

//   @override
//   State<MessageScreen> createState() => _MessageScreenState();
// }

// class _MessageScreenState extends State<MessageScreen> {

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           elevation: 0,
//           backgroundColor: Color.fromARGB(255, 248, 100, 89),
//           actions: [
//             const ArrowButtonBack(
//               color: Colors.white,
//             ),
//             textWidget(
//               value: ,
//               textSize: subHeading,
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

class MessageScreen extends StatelessWidget {
  final String name;
  const MessageScreen({Key? key, this.name = ""}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screen = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: commentColor,
          title: Text(
            name,
            style: const TextStyle(fontSize: 17),
          ),
        ),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Container(
                height: 800,
                color: whiteColor,
              ),
            ),
            Positioned(
              bottom: 0,
              child: MessageContainer(text: "Write your message here"),
            ),
          ],
        ),
      ),
    );
  }
}
