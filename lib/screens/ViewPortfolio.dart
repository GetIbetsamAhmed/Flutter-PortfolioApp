//import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../constants/constants.dart';
import '../smartWidgets/smartWidget.dart';
import 'package:flutter_svg/flutter_svg.dart';

//import 'dart:html';

class Screen2 extends StatefulWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    final Size screen = MediaQuery.of(context).size;
    return SafeArea(
      bottom: false,
      child: Scaffold(
        body: Padding(
          padding: overallPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // AppBar here
              const AppBarContainer(check: 2),

              // Space
              const space(height: 10),

              // Different Fields Horizontal Scroll List
              SizedBox(
                height: 110,
                width: screen.width,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    FieldContainer(
                      icon: SvgPicture.asset('Assets/MobileApps.svg'),
                      text: 'Mobile Apps',
                    ),
                    FieldContainer(
                      icon: SvgPicture.asset('Assets/BackEnd.svg'),
                      text: 'BackEnd\nDevelopment',
                    ),
                    FieldContainer(
                      icon: SvgPicture.asset('Assets/UIUXDesigns.svg'),
                      text: 'UI/UX Designs',
                    ),
                    FieldContainer(
                      icon: SvgPicture.asset('Assets/WebDesigns.svg'),
                      text: 'Web Apps',
                    ),
                  ],
                ),
              ),

              // Space
              const space(height: 10),

              // Professionals heading
              const textWidget(
                value: 'Professionals',
                textSize: mainHeading,
                textWeight: FontWeight.bold,
              ),

              // space
              const space(height: 15),

              // SearchBar
              const SearchBar(),

              // space
              const space(height: 17),

              // Professional Creatives
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                child: SizedBox(
                  height: 20,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      // Professional Creatives
                      textWidget(
                        value: 'Professional Creatives',
                        textColor: commentColor,
                        textSize: subHeading,
                        textWeight: FontWeight.bold,
                      ),

                      // Popular Button
                      // GestureDetector(
                      //   onTap: () {},
                      //   child: Container(
                      //     height: 45,
                      //     width: 90,
                      //     decoration: BoxDecoration(
                      //         borderRadius: BorderRadius.circular(10),
                      //         border: Border.all(
                      //           color: whiteShadeColor,
                      //           width: 2,
                      //         )),
                      //     child: const Center(
                      //         child: textWidget(
                      //       value: 'Popular',
                      //       textSize: 14,
                      //       textColor: whiteShadeColorSearchBar,
                      //     )),
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),

              // space
              const space(height: 10),

              // Professionals Container

              Flexible(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: const [
                    ProfessionalContainer(
                      personName: 'Devayne Rome',
                      description:
                          'FrontEnd Developer| UI/UX Designer| Flutter Developer',
                      imageURL:
                          'https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cHJvZmlsZSUyMHBpY3R1cmV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
                    ),
                    space(height: 8),
                    ProfessionalContainer(
                      personName: 'Alex Coasta',
                      description: 'Sr. Node.Js Developer| Redex| SQL Expert',
                      imageURL:
                          'https://media.istockphoto.com/photos/young-character-actor-headshot-picture-id1211061995?k=20&m=1211061995&s=170667a&w=0&h=KtUBCp33OpGS9VfQ35IIJB8jF7aC1r7tMhI_Rqlxh5I=',
                    ),
                    space(height: 8),
                    ProfessionalContainer(
                      personName: 'Joseph Shane',
                      description: 'Sr. Software Engineer| Software Architect',
                      imageURL:
                          'https://media.istockphoto.com/photos/real-man-portrait-picture-id117148756?k=20&m=117148756&s=170667a&w=0&h=bj0eYb3Frw4QINVlwdt4OCuLoIk551uQUZ20sHOhMhU=',
                    ),
                    space(height: 8),
                    ProfessionalContainer(
                      personName: 'Sherrik Pont',
                      description:
                          'SQA Engineer| Unit Testing Expert| Bugs and Issues Tracking',
                      imageURL:
                          'https://media.istockphoto.com/photos/portrait-of-a-handsome-young-man-sitting-at-studio-picture-id488694333?k=20&m=488694333&s=612x612&w=0&h=QuHtPlPLTa-p98bi15TB73-KKXRi7tW7EDulAe6nPq4=',
                    ),
                    space(height: 8),
                    ProfessionalContainer(
                      personName: 'Sam Johnes',
                      description:
                          'Sr. BackEnd Developer| Node.Js| Spring| Python Developer',
                      imageURL:
                          'https://media.istockphoto.com/photos/smiling-businessman-in-studio-shot-picture-id514581138?k=20&m=514581138&s=612x612&w=0&h=FKJ18OR3xf6spOeLN8bmQMRipO7muooXG1LhLZR20R8=',
                    ),
                    space(height: 8),
                    ProfessionalContainer(
                      personName: 'Liana Simms',
                      description:
                          'Architect Engineer| Project Manager| Professional Motivator',
                      imageURL:
                          'https://media.istockphoto.com/photos/close-up-portrait-of-brunette-woman-picture-id1154642632?k=20&m=1154642632&s=612x612&w=0&h=dQPjQCt_WOKhD0ysSJG6gIsu7xW65vH8Wf_SaqetIqY=',
                    ),
                    space(height: 8),
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
