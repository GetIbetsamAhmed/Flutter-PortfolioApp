import 'package:flutter/material.dart';
import '../constants/constants.dart';
import '../screens/screen2.dart';
import '../screens/screen3.dart';
import '../screens/screen1.dart';

class textWidget extends StatelessWidget {
  final String value;
  final double textSize;
  final Color textColor;
  final FontWeight textWeight;
  final TextAlign textAlign;
  const textWidget(
      {Key? key,
      required this.value,
      this.textSize = 10,
      this.textColor = Colors.black,
      this.textWeight = FontWeight.normal,
      this.textAlign = TextAlign.start})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      value,
      textAlign: textAlign,
      style: TextStyle(
        color: textColor,
        fontSize: textSize,
        fontWeight: textWeight,
      ),
    );
  }
}

class IconWidget extends StatelessWidget {
  final double iconSize;
  final Color iconColor;
  final icon;
  const IconWidget(
      {Key? key,
      required this.icon,
      this.iconColor = Colors.black,
      this.iconSize = 10})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: iconSize,
      color: iconColor,
    );
  }
}

class HamburgerMenu extends StatelessWidget {
  final double size;
  //final double count;
  const HamburgerMenu({
    Key? key,
    //required this.count,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: size,
        ),
        Container(
          height: size * 0.70,
        ),
      ],
    );
  }
}

class space extends StatelessWidget {
  final double height;
  final double width;
  const space({Key? key, this.height = 0, this.width = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
    );
  }
}

class AppBarContainer extends StatelessWidget {
  final int check;
  const AppBarContainer({Key? key, required this.check}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // AppBar
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Icon(
          //   Icons.menu,
          //   size: 35,
          // ),
          GestureDetector(
            onTap: () {
              if (this.check != 1) {
                routeToDefault(context);
              }
            },
            child: const Text(
              'Embest',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          // Icon(Icons.search_rounded, size: 30),
        ],
      ),
    );
  }
}

class FieldContainer extends StatelessWidget {
  final icon;
  final String text;
  const FieldContainer({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
        height: 110,
        width: 110,
        decoration: BoxDecoration(
          color: fieldContainerColor,
          borderRadius: BorderRadius.circular(2),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: icon,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const space(height: 5),
            SizedBox(
              width: 50,
              child: textWidget(
                textAlign: TextAlign.center,
                value: text,
                textSize: 8,
                textWeight: FontWeight.bold,
              ),
            ),
          ],
        ));
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screen = MediaQuery.of(context).size;
    return Container(
      height: 45,
      width: screen.width,
      decoration: BoxDecoration(
        border: Border.all(
          color: whiteShadeColor,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
        child: TextFormField(
          decoration: const InputDecoration(
            border: InputBorder.none,
            hintText: 'Search Profssionals',
            hintStyle:
                TextStyle(color: whiteShadeColorSearchBar, fontSize: 14.9),
            icon: IconWidget(
              icon: Icons.search_outlined,
              iconColor: whiteShadeColorSearchBar,
              iconSize: mainHeading,
            ),
          ),
        ),
      ),
    );
  }
}

class RatingTile extends StatelessWidget {
  final String text;
  final String textDescription;
  final IconData icon;
  const RatingTile(
      {Key? key,
      required this.text,
      required this.icon,
      required this.textDescription})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      //width: 100,
      child: Row(
        children: [
          Icon(
            icon,
            size: 25,
          ),

          const space(width: 10),
          // Ratings Column
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                text,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Text(
                textDescription,
                style: const TextStyle(
                  color: Color.fromARGB(255, 110, 109, 109),
                  fontSize: 10,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ProfessionalContainer extends StatelessWidget {
  final String personName;
  final String description;
  final String imageURL;
  const ProfessionalContainer(
      {Key? key,
      required this.personName,
      required this.description,
      required this.imageURL})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        routetoScreen(context, 'screen3');
      },
      child: Container(
        //margin: const EdgeInsets.fromLTRB(3, 0, 3, 10),
        decoration: BoxDecoration(
          border: Border.all(
            color: whiteShadeColor,
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Row(
            children: [
              // Picture Here
              Container(
                height: 95,
                width: 95,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: whiteShadeColorSearchBar,
                    width: .65,
                  ),
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: NetworkImage(imageURL),
                    fit: BoxFit.contain,
                  ),
                  color: Colors.transparent,
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Person Name
                    textWidget(
                      value: personName,
                      textColor: commentColor,
                      textSize: subHeading,
                      textWeight: FontWeight.bold,
                    ),

                    // Space
                    const space(height: 5),

                    // Skills and Designation
                    SizedBox(
                      width: 210,
                      height: 30,
                      child: textWidget(
                        value: description,
                        textColor: commentColor,
                        textSize: 10,
                      ),
                    ),

                    // Space
                    const space(height: 5),

                    // Message and Follow Button

                    SizedBox(
                      height: 30,
                      width: 210,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Follow Button
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 30,
                              width: 95,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: commentColor),
                              child: const Center(
                                  child: textWidget(
                                value: 'Follow',
                                textSize: 10,
                                textColor: whiteColor,
                                textWeight: FontWeight.bold,
                              )),
                            ),
                          ),

                          // space

                          // Message Button
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 30,
                              width: 95,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: commentColor,
                                  width: 1,
                                ),
                              ),
                              child: const Center(
                                  child: textWidget(
                                value: 'Message',
                                textSize: 10,
                                textColor: commentColor,
                                textWeight: FontWeight.bold,
                              )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// View Portfolio Button
class ViewPortfolioButton extends StatefulWidget {
  ViewPortfolioButton({Key? key}) : super(key: key);

  @override
  State<ViewPortfolioButton> createState() => _ViewPortfolioButtonState();
}

class _ViewPortfolioButtonState extends State<ViewPortfolioButton> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    final Size screen = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        routetoScreen(context, 'screen2');
      },
      child: Container(
        height: 38,
        margin: const EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
          //color: isPressed ? Colors.transparent : commentColor,
          border: Border.all(
              color: isPressed ? Colors.transparent : commentColor, width: .8),
          // border: Border.all(
          //   color: isPressed ? Colors.green : commentColor,
          //   width: 2,
          // ),
          borderRadius: BorderRadius.circular(5),
        ),
        width: screen.width,
        child: const Center(
          child: Text(
            'View Portfolio',
            style: TextStyle(
                //color: isPressed ? commentColor : whiteColor,
                color: commentColor,
                fontWeight: FontWeight.bold,
                fontSize: 11),
          ),
        ),
      ),
    );
  }
}

class ArrowButtonBack extends StatelessWidget {
  const ArrowButtonBack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        routeBack(context, 'screen2');
      },
      child: const IconWidget(
        icon: Icons.arrow_back,
        iconSize: 30,
      ),
    );
  }
}

Map<String, Widget> screens = {
  'screen2': const Screen2(), // 2
  'screen3': const Screen3(), // 3
};
int currentScreen = 1;
var _defaultRoute = const Screen1(); // 1

routetoScreen(BuildContext context, String screenNum) {
  currentScreen++;
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return screens[screenNum]!;
  }));
}

routeBack(BuildContext context, String screenNum) {
  currentScreen--;
  print('\nRoute back triggered');
  Navigator.pop(context, MaterialPageRoute(builder: (context) {
    return screens[screenNum]!;
  }));
  //}
}

routeToDefault(BuildContext context) {
  print('\nRoute To Default triggered');
  Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(builder: (context) => const Screen1()),
    // ModalRoute.withName("/Home"),
    (route) => false,
  );
}
