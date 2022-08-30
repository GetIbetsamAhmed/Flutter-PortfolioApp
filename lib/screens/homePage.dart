import 'package:flutter/material.dart';
import '../constants/constants.dart';
import '../smartWidgets/smartWidget.dart';
//import 'dart:html';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    final Size screen = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            // Main Screen
            SingleChildScrollView(
              child: Padding(
                padding: overallPadding,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // space

                    // AppBar
                    const AppBarContainer(check: 1),

                    //const space(height: 20),
                    const space(height: 10),

                    // Picture Container
                    InkWell(
                      onTap: () {
                        routetoScreen(context, 'screen2');
                      },
                      child: Container(
                        height: screen.height * 0.35,
                        width: screen.width,
                        decoration: BoxDecoration(
                          color: commentColor,
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                            image: NetworkImage(
                                'https://images.unsplash.com/photo-1517841905240-472988babdf9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ),
                    ),

                    // Remaining Container
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 7),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Name
                          const Text(
                            'Person Name',
                            style: TextStyle(
                              fontSize: mainHeading,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.2,
                            ),
                          ),

                          // space
                          //const space(height: 5),

                          // Designation
                          const Text(
                            'Designation',
                            style: TextStyle(
                              fontSize: bodyTextSize12,
                              fontWeight: FontWeight.bold,
                              color: greyColor,
                            ),
                          ),

                          // space
                          const space(height: 20),

                          // Rating Row
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: SizedBox(
                              height: 45,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  // Ratings Column
                                  const RatingTile(
                                    text: '4.5',
                                    textDescription: 'Ovverall Rating',
                                    icon: Icons.star_rounded,
                                  ),

                                  // Main Partition Line
                                  Container(
                                    width: 2,
                                    color: whiteShadeColor,
                                  ),

                                  // Total Projects Icon
                                  const RatingTile(
                                    text: '50+',
                                    icon: Icons.folder,
                                    textDescription: 'Total Projects',
                                  ),
                                ],
                              ),
                            ),
                          ),

                          //View PortFolio
                          ViewPortfolioButton(),

                          // About Heading
                          const Text(
                            'About (Name)',
                            style: TextStyle(
                              fontSize: subHeading,
                              fontWeight: FontWeight.bold,
                              color: commentColor,
                            ),
                          ),

                          // space
                          const space(height: 10),

                          // Description
                          const Text(
                            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries.\n\nBut also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry.\n\nLorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: bodyTextSize12,
                              color: descriptionColor,
                              height: 1.7,
                              wordSpacing: 2,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Static Bottom Button
            // Positioned(
            //   height: 80,
            //   bottom: 0,
            //   width: screen.width,
            //   child: Container(
            //     height: screen.height,
            //     width: screen.width,
            //     color: whiteColor,
            //     child: Padding(
            //       padding:
            //           const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            //       child: FloatingActionButton(
            //         onPressed: () {},
            //         shape: const BeveledRectangleBorder(
            //           borderRadius: BorderRadius.zero,
            //         ),
            //         elevation: 0,
            //         backgroundColor: blackColor,
            //         child: const textWidget(
            //           value: 'Hire Him!',
            //           textColor: whiteColor,
            //           textSize: 16,
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
