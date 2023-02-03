import 'package:edu/Screens/CourseScreen/components/mycourse_card.dart';
import 'package:edu/Screens/HomeScreen/components/course_card.dart';
import 'package:edu/Widgets/rounded_button.dart';
import 'package:edu/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class CourseScreen extends StatefulWidget {
  String error;
  CourseScreen({Key? key, this.error = 'Something Went Wrong'})
      : super(key: key);

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  bool loading = false;
  int buttonCategoryNumber = 0;
  ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          "My Courses",
          overflow: TextOverflow.ellipsis,
          maxLines: 3,
          textAlign: TextAlign.center,
          style: GoogleFonts.montserrat(
            textStyle: const TextStyle(
              color: darkColor,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.search,
              color: darkColor,
            ),
          )
        ],
        // toolbarHeight: 90,
        backgroundColor: whiteColor,
        foregroundColor: darkColor,
        centerTitle: true,
      ),
      backgroundColor: backgroundColor,
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  margin: const EdgeInsets.all(20),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 55,
                          width: double.infinity,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemCount: 3,
                            separatorBuilder: (context, index) {
                              return const SizedBox(width: 10);
                            },
                            itemBuilder: (context, index) {
                              switch (index) {
                                case 0:
                                  return RoundedButton(
                                    width: 100,
                                    text: "All",
                                    selectedColor: primaryColor,
                                    iconData: CupertinoIcons.doc_fill,
                                    pressed: buttonCategoryNumber == 0,
                                    press: () {
                                      setState(() {
                                        buttonCategoryNumber = 0;
                                      });
                                    },
                                  );
                                  break;
                                case 1:
                                  return RoundedButton(
                                    text: "Ongoing",
                                    selectedColor: secondaryColor,
                                    iconData: CupertinoIcons.flame_fill,
                                    pressed: buttonCategoryNumber == 1,
                                    press: () {
                                      setState(() {
                                        buttonCategoryNumber = 1;
                                      });
                                    },
                                  );
                                  break;
                                case 2:
                                  return RoundedButton(
                                    width: 180,
                                    text: "Completed",
                                    selectedColor: Colors.deepPurple,
                                    iconData: CupertinoIcons.checkmark_square,
                                    pressed: buttonCategoryNumber == 2,
                                    press: () {
                                      setState(() {
                                        buttonCategoryNumber = 2;
                                      });
                                    },
                                  );
                                  break;
                                default:
                                  return Container();
                              }
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Card(
                          // margin: margin,
                          color: primaryColor,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                  child: Container(
                                    // width: size.width * 0.55 - 40,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Find a course you want to learn !",
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 3,
                                          textAlign: TextAlign.start,
                                          style: GoogleFonts.montserrat(
                                            textStyle: const TextStyle(
                                              color: whiteColor,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Container(
                                          width: 130,
                                          child: CupertinoButton(
                                            borderRadius:
                                                BorderRadius.circular(30.0),
                                            padding: const EdgeInsets.all(10),
                                            color: whiteColor,
                                            onPressed: () {},
                                            child: Text(
                                              'Check Now',
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 3,
                                              textAlign: TextAlign.start,
                                              style: GoogleFonts.montserrat(
                                                textStyle: const TextStyle(
                                                  color: darkDarkColor,
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Image.asset(
                                  "assets/images/mycourse2.png",
                                  width: 100,
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        const MyCourseCard(
                          margin: EdgeInsets.only(right: 15),
                          title: "Digital Design",
                          description:
                              "Craft a career in a digital design with support from our teachers",
                          color: Color.fromRGBO(118, 131, 187, 1.0),
                          textColor: whiteColor,
                          imagePath: "assets/images/course1.png",
                          imageWidth: 80,
                          completedPercentage: 70,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const MyCourseCard(
                          margin: EdgeInsets.only(right: 15),
                          title: "Quilting Course",
                          description:
                              "Congratulations! You completed this course 100%",
                          color: Color.fromRGBO(129, 223, 224, 1.0),
                          textColor: whiteColor,
                          imagePath: "assets/images/course2.png",
                          imageWidth: 80,
                          completedPercentage: 100,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const MyCourseCard(
                          margin: EdgeInsets.only(right: 15),
                          title: "Powerpoint",
                          description:
                              "Enhance your presentation skills on PowerPoint",
                          color: Color.fromRGBO(234, 189, 104, 1.0),
                          textColor: whiteColor,
                          imagePath: "assets/images/course1.png",
                          imageWidth: 80,
                          completedPercentage: 25,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.2,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
