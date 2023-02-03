import 'package:auto_route/auto_route.dart';
import 'package:edu/Screens/HomeScreen/components/course_card.dart';
import 'package:edu/constants.dart';
import 'package:edu/app_route.gr.dart' as app_route;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class FavouritesScreen extends StatefulWidget {
  String error;
  FavouritesScreen({Key? key, this.error = 'Something Went Wrong'})
      : super(key: key);

  @override
  State<FavouritesScreen> createState() => _FavouritesScreenState();
}

class _FavouritesScreenState extends State<FavouritesScreen> {
  bool loading = false;
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
                        Text(
                          "Favourite Courses",
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
                        // Column(
                        //   children: [
                        //     Row(
                        //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //       children: [
                        //         Container(
                        //           // height: 55,
                        //           width: 150,
                        //           // padding: const EdgeInsets.all(20),
                        //           child: CupertinoButton(
                        //             borderRadius: BorderRadius.circular(30.0),
                        //             padding: const EdgeInsets.all(10),
                        //             color: primaryColor,
                        //             onPressed: () {},
                        //             child: Row(
                        //               mainAxisAlignment:
                        //                   MainAxisAlignment.start,
                        //               children: [
                        //                 Container(
                        //                   // margin: EdgeInsets.all(100.0),
                        //                   decoration: const BoxDecoration(
                        //                     color: whiteColor,
                        //                     shape: BoxShape.circle,
                        //                   ),
                        //                   padding: const EdgeInsets.all(10),
                        //                   child: const Icon(
                        //                     CupertinoIcons.flame_fill,
                        //                     color: primaryColor,
                        //                   ),
                        //                 ),
                        //                 const SizedBox(
                        //                   width: 10,
                        //                 ),
                        //                 Text(
                        //                   "All Topic",
                        //                   overflow: TextOverflow.ellipsis,
                        //                   maxLines: 3,
                        //                   textAlign: TextAlign.start,
                        //                   style: GoogleFonts.montserrat(
                        //                     textStyle: const TextStyle(
                        //                       color: whiteColor,
                        //                       fontSize: 17,
                        //                       fontWeight: FontWeight.w500,
                        //                     ),
                        //                   ),
                        //                 ),
                        //               ],
                        //             ),
                        //           ),
                        //         ),
                        //         const SizedBox(
                        //           width: 15,
                        //         ),
                        //         Container(
                        //           // height: 55,
                        //           width: 150,
                        //           // padding: const EdgeInsets.all(20),
                        //           child: CupertinoButton(
                        //             borderRadius: BorderRadius.circular(30.0),
                        //             padding: const EdgeInsets.all(10),
                        //             color: whiteColor,
                        //             onPressed: () {},
                        //             child: Row(
                        //               mainAxisAlignment:
                        //                   MainAxisAlignment.start,
                        //               children: [
                        //                 Container(
                        //                   // margin: EdgeInsets.all(100.0),
                        //                   decoration: const BoxDecoration(
                        //                     color: secondaryColor,
                        //                     shape: BoxShape.circle,
                        //                   ),
                        //                   padding: const EdgeInsets.all(10),
                        //                   child: const Icon(
                        //                     CupertinoIcons.bolt,
                        //                     color: whiteColor,
                        //                   ),
                        //                 ),
                        //                 const SizedBox(
                        //                   width: 10,
                        //                 ),
                        //                 Text(
                        //                   "Popular",
                        //                   overflow: TextOverflow.ellipsis,
                        //                   maxLines: 3,
                        //                   textAlign: TextAlign.start,
                        //                   style: GoogleFonts.montserrat(
                        //                     textStyle: const TextStyle(
                        //                       color: darkColor,
                        //                       fontSize: 17,
                        //                       fontWeight: FontWeight.w500,
                        //                     ),
                        //                   ),
                        //                 ),
                        //               ],
                        //             ),
                        //           ),
                        //         ),
                        //       ],
                        //     ),
                        //     const SizedBox(
                        //       height: 20,
                        //     ),
                        //     Row(
                        //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //       children: [
                        //         Container(
                        //           // height: 55,
                        //           width: 150,
                        //           // padding: const EdgeInsets.all(20),
                        //           child: CupertinoButton(
                        //             borderRadius: BorderRadius.circular(30.0),
                        //             padding: const EdgeInsets.all(10),
                        //             color: whiteColor,
                        //             onPressed: () {},
                        //             child: Row(
                        //               mainAxisAlignment:
                        //                   MainAxisAlignment.start,
                        //               children: [
                        //                 Container(
                        //                   // margin: EdgeInsets.all(100.0),
                        //                   decoration: const BoxDecoration(
                        //                     color: Colors.purple,
                        //                     shape: BoxShape.circle,
                        //                   ),
                        //                   padding: const EdgeInsets.all(10),
                        //                   child: const Icon(
                        //                     CupertinoIcons.star,
                        //                     color: whiteColor,
                        //                   ),
                        //                 ),
                        //                 const SizedBox(
                        //                   width: 10,
                        //                 ),
                        //                 Text(
                        //                   "Newest",
                        //                   overflow: TextOverflow.ellipsis,
                        //                   maxLines: 3,
                        //                   textAlign: TextAlign.start,
                        //                   style: GoogleFonts.montserrat(
                        //                     textStyle: const TextStyle(
                        //                       color: darkColor,
                        //                       fontSize: 17,
                        //                       fontWeight: FontWeight.w500,
                        //                     ),
                        //                   ),
                        //                 ),
                        //               ],
                        //             ),
                        //           ),
                        //         ),
                        //         const SizedBox(
                        //           width: 15,
                        //         ),
                        //         Container(
                        //           // height: 55,
                        //           width: 150,
                        //           // padding: const EdgeInsets.all(20),
                        //           child: CupertinoButton(
                        //             borderRadius: BorderRadius.circular(30.0),
                        //             padding: const EdgeInsets.all(10),
                        //             color: whiteColor,
                        //             onPressed: () {},
                        //             child: Row(
                        //               mainAxisAlignment:
                        //                   MainAxisAlignment.start,
                        //               children: [
                        //                 Container(
                        //                   // margin: EdgeInsets.all(100.0),
                        //                   decoration: const BoxDecoration(
                        //                     color: Colors.green,
                        //                     shape: BoxShape.circle,
                        //                   ),
                        //                   padding: const EdgeInsets.all(10),
                        //                   child: const Icon(
                        //                     CupertinoIcons.bookmark,
                        //                     color: whiteColor,
                        //                   ),
                        //                 ),
                        //                 const SizedBox(
                        //                   width: 10,
                        //                 ),
                        //                 Text(
                        //                   "Advance",
                        //                   overflow: TextOverflow.ellipsis,
                        //                   maxLines: 3,
                        //                   textAlign: TextAlign.start,
                        //                   style: GoogleFonts.montserrat(
                        //                     textStyle: const TextStyle(
                        //                       color: darkColor,
                        //                       fontSize: 17,
                        //                       fontWeight: FontWeight.w500,
                        //                     ),
                        //                   ),
                        //                 ),
                        //               ],
                        //             ),
                        //           ),
                        //         ),
                        //       ],
                        //     ),
                        //   ],
                        // ),
                        // const SizedBox(height: 30),
                        // Carousel
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
                                  return  CourseCard(
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
                                  return CourseCard(
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
                                              courseImage: 'assets/images/course2.png'));
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
