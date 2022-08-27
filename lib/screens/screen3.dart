import 'package:flutter/material.dart';
import '../constants/constants.dart';
import '../smartWidgets/smartWidget.dart';

class Screen3 extends StatefulWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    //final Size screen = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: overallPadding,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Back Arrow Button
                const ArrowButtonBack(),

                // Space
                const space(height: 10),

                Container(
                  height: 270,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: commentColor,
                    image: const DecorationImage(
                      image: NetworkImage(
                        'https://images.unsplash.com/photo-1461749280684-dccba630e2f6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1469&q=80',
                      ),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),

                //space
                const space(height: 10),

                // Picture Container
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // UserName Contaienr
                        Row(
                          //space

                          children: const [
                            // By :
                            textWidget(
                              value: 'By :  ',
                              textColor: greyColor,
                              textSize: subHeading,
                            ),

                            // Person Name
                            textWidget(
                              value: 'Muhammed Ibad Amir',
                              textColor: commentColor,
                              textSize: subHeading,
                              textWeight: FontWeight.bold,
                            )
                          ],
                        ),

                        // Space
                        const space(height: 30),

                        // Headings
                        const textWidget(
                          value: 'Make Design System People Wants to use',
                          textColor: blackColor,
                          textSize: mainHeading,
                          textWeight: FontWeight.bold,
                        ),

                        // space
                        const space(height: 20),

                        // Description
                        const Text(
                          "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of " +
                              "de Finibus Bonorum et Malorum" +
                              "(The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, " +
                              "Lorem ipsum dolor sit amet" +
                              "\n\n" +
                              "Comes from a line in section 1.10.32.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from " +
                              "de Finibus Bonorum et Malorum" +
                              "\n\n" +
                              "By Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham." +
                              "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of " +
                              "de Finibus Bonorum et Malorum" +
                              "(The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, " +
                              "Lorem ipsum dolor sit amet" +
                              "\n\n" +
                              "Comes from a line in section 1.10.32.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from " +
                              "de Finibus Bonorum et Malorum" +
                              "by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            color: commentColor,
                            fontSize: bodyTextSize12,
                            wordSpacing: 2,
                          ),
                        ),
                      ],
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
}
