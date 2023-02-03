import 'package:edu/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CourseModuleCard extends StatelessWidget {
  final String title, time, index;
  // final Function()? press;
  // final Color color, textColor;
  // final String imagePath;
  final bool selected;

  const CourseModuleCard({
    Key? key,
    required this.title,
    required this.time,
    required this.index,
    this.selected = false,
    // required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Card(
      margin: EdgeInsets.zero,
      color: whiteColor,
      elevation: 5,
      shadowColor: lightPrimaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              // margin: EdgeInsets.all(100.0),
              decoration: BoxDecoration(
                color: selected ? primaryColor : lightPrimaryColor,
                shape: BoxShape.circle,
              ),
              padding: const EdgeInsets.all(10),
              child: Center(
                child: selected
                    ? const Icon(
                        CupertinoIcons.play_fill,
                        color: whiteColor,
                        size: 15,
                      )
                    : Text(
                        index,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                        textAlign: TextAlign.start,
                        style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                            color: darkColor,
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                      textAlign: TextAlign.start,
                      style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                          color: darkColor,
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      time,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                      textAlign: TextAlign.start,
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          color: darkColor.withOpacity(0.7),
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                // margin: EdgeInsets.all(100.0),
                decoration: BoxDecoration(
                  color: selected ? primaryColor : lightPrimaryColor,
                  shape: BoxShape.circle,
                ),
                padding: const EdgeInsets.all(10),
                child: Center(
                  child: Icon(
                    CupertinoIcons.lock_fill,
                    color: selected ? whiteColor : primaryColor,
                    size: 15,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
