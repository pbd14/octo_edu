import 'package:edu/Screens/CourseScreen/components/course_module_card.dart';
import 'package:edu/Screens/CourseScreen/components/mycourse_card.dart';
import 'package:edu/Screens/HomeScreen/components/course_card.dart';
import 'package:edu/Widgets/rounded_button.dart';
import 'package:edu/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class CourseDetailScreen extends StatefulWidget {
  String error;
  String courseTitle;
  String courseImage;
  CourseDetailScreen({
    Key? key,
    this.error = 'Something Went Wrong',
    required this.courseTitle,
    required this.courseImage,
  }) : super(key: key);

  @override
  State<CourseDetailScreen> createState() => _CourseDetailScreenState();
}

class _CourseDetailScreenState extends State<CourseDetailScreen> {
  bool loading = false;
  ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: true,
        title: Text(
          widget.courseTitle,
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
              CupertinoIcons.heart_circle_fill,
              color: secondaryColor,
            ),
          )
        ],
        // toolbarHeight: 90,
        backgroundColor: whiteColor,
        foregroundColor: darkColor,
        centerTitle: true,
      ),
      bottomNavigationBar: Container(
        height: 100,
        child: Card(
          // margin: margin,
          color: whiteColor,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RoundedButton(
                  width: 130,
                  text: "\$32.54",
                  selectedColor: secondaryColor,
                  iconData: CupertinoIcons.tag_fill,
                  pressed: true,
                  press: () {},
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  width: size.width * 0.4,
                  child: CupertinoButton(
                    borderRadius: BorderRadius.circular(30.0),
                    padding: const EdgeInsets.all(10),
                    color: primaryColor,
                    onPressed: () {},
                    child: Text(
                      'Buy Now',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                      textAlign: TextAlign.start,
                      style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                          color: whiteColor,
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
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
                        Card(
                          // margin: margin,
                          color: whiteColor,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Image.asset(
                              widget.courseImage,
                              width: size.width * 0.9 - 40,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        const CourseModuleCard(
                          title: 'Introduction',
                          time: '06:25 / 17:45',
                          index: '1',
                          selected: true,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const CourseModuleCard(
                          title: 'What is UX Design?',
                          time: '00:00 / 12:50',
                          index: '2',
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const CourseModuleCard(
                          title: 'What is Design Thinking?',
                          time: '00:00 / 09:32',
                          index: '3',
                        ),
                        const SizedBox(
                          height: 20,
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
