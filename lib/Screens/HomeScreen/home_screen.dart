import 'package:auto_route/auto_route.dart';
import 'package:edu/Screens/HomeScreen/components/course_card.dart';
import 'package:edu/Widgets/rounded_button.dart';
import 'package:edu/app_route.gr.dart' as app_route;
import 'package:edu/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class HomeScreen extends StatefulWidget {
  String error;
  HomeScreen({Key? key, this.error = 'Something Went Wrong'}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool loading = false;
  String search = 'Search';
  int buttonCategoryNumber = 0;
  ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        shadowColor: backgroundColor,
        elevation: 0,
        automaticallyImplyLeading: false,
        flexibleSpace: Container(
          margin: const EdgeInsets.fromLTRB(20, 40, 20, 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello,",
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
                textAlign: TextAlign.start,
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                    color: lightDarkColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "Alonzo Lee ",
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
                textAlign: TextAlign.start,
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                    color: darkDarkColor,
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
        ),
        actions: [
          Image.asset(
            "assets/images/1.png",
            width: 100,
          ),
        ],
        toolbarHeight: 90,
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
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Card(
                                color: whiteColor,
                                elevation: 0,
                                borderOnForeground: false,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 5, 10, 5),
                                  child: TextFormField(
                                    style:
                                        const TextStyle(color: darkDarkColor),
                                    cursorColor: Colors.transparent,
                                    validator: (val) {
                                      if (val!.isEmpty) {
                                        return 'Cannot be empty';
                                      } else {
                                        return null;
                                      }
                                    },
                                    keyboardType: TextInputType.visiblePassword,
                                    onChanged: (val) {
                                      setState(() {
                                        search = val;
                                      });
                                    },
                                    decoration: InputDecoration(
                                      errorBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.red, width: 1.0),
                                      ),
                                      focusedBorder: InputBorder.none,
                                      enabledBorder: InputBorder.none,
                                      hintStyle: TextStyle(
                                          color: darkColor.withOpacity(0.7)),
                                      hintText: 'Search',
                                      border: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: secondaryColor, width: 1.0),
                                      ),
                                      suffixIcon: const Icon(
                                        CupertinoIcons.search,
                                        color: darkColor,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Container(
                              height: 55,
                              width: 55,
                              // padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),

                              child: CupertinoButton(
                                borderRadius: BorderRadius.circular(20.0),
                                padding: EdgeInsets.zero,
                                color: primaryColor,
                                onPressed: () {},
                                child: const Icon(
                                  CupertinoIcons.bars,
                                  color: whiteColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                        Text(
                          "Courses",
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                          textAlign: TextAlign.start,
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                              color: darkDarkColor,
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        const SizedBox(height: 30),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                RoundedButton(
                                  text: "All Topic",
                                  selectedColor: primaryColor,
                                  iconData: CupertinoIcons.flame_fill,
                                  pressed: buttonCategoryNumber == 0,
                                  press: () {
                                    setState(() {
                                      buttonCategoryNumber = 0;
                                    });
                                  },
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                RoundedButton(
                                  text: "Popular",
                                  selectedColor: secondaryColor,
                                  iconData: CupertinoIcons.bolt,
                                  pressed: buttonCategoryNumber == 1,
                                  press: () {
                                    setState(() {
                                      buttonCategoryNumber = 1;
                                    });
                                  },
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                RoundedButton(
                                  text: "Newest",
                                  selectedColor: Colors.purple,
                                  iconData: CupertinoIcons.star,
                                  pressed: buttonCategoryNumber == 2,
                                  press: () {
                                    setState(() {
                                      buttonCategoryNumber = 2;
                                    });
                                  },
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                RoundedButton(
                                  text: "Advance",
                                  selectedColor: Colors.green,
                                  iconData: CupertinoIcons.bookmark,
                                  pressed: buttonCategoryNumber == 3,
                                  press: () {
                                    setState(() {
                                      buttonCategoryNumber = 3;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
                        // Courses
                        Container(
                          height: 350,
                          width: double.infinity,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemCount: 2,
                            separatorBuilder: (context, index) {
                              return const SizedBox(width: 10);
                            },
                            itemBuilder: (context, index) {
                              switch (index) {
                                case 0:
                                  return CourseCard(
                                    margin: EdgeInsets.only(right: 15),
                                    title: "Digital Design",
                                    creator: "Courson Agency",
                                    filesNo: '17',
                                    duration: '40 min',
                                    color: primaryColor,
                                    textColor: whiteColor,
                                    imagePath: "assets/images/course1.png",
                                    onPressed: () {
                                      AutoRouter.of(context).push(
                                          app_route.CourseDetailScreen(
                                              courseTitle: "Digital Design",
                                              courseImage:
                                                  'assets/images/course1.png'));
                                    },
                                  );
                                  break;
                                case 1:
                                  return  CourseCard(
                                    margin: EdgeInsets.only(right: 15),
                                    title: "Web development",
                                    creator: "Udemy",
                                    filesNo: '20',
                                    duration: '60 min',
                                    color: secondaryColor,
                                    textColor: whiteColor,
                                    imagePath: "assets/images/course2.png",
                                    onPressed: () {
                                      AutoRouter.of(context).push(
                                          app_route.CourseDetailScreen(
                                              courseTitle: "Web development",
                                              courseImage:
                                                  'assets/images/course2.png'));
                                    },
                                  );
                                  break;
                                default:
                                  return Container();
                              }
                            },
                          ),
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
