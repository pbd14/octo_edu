import 'package:edu/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CourseCard extends StatelessWidget {
  final String title, creator, filesNo, duration;
  final Function()? onPressed;
  final Color color, textColor;
  final String imagePath;

  final double elevation, borderRadius, imageWidth;
  final EdgeInsets padding, margin;

  const CourseCard({
    Key? key,
    required this.title,
    required this.creator,
    required this.filesNo,
    required this.duration,
    required this.onPressed,
    required this.color,
    required this.textColor,
    this.elevation = 0,
    this.borderRadius = 30,
    this.padding = const EdgeInsets.all(15),
    this.margin = const EdgeInsets.all(0),
    this.imagePath = "assets/images/course1.png",
    this.imageWidth = 200,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return CupertinoButton(
      onPressed: onPressed,
      padding: EdgeInsets.zero,
      child: Card(
        margin: margin,
        color: color,
        elevation: elevation,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Padding(
          padding: padding,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  imagePath,
                  width: imageWidth,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
    
              // Details
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                    textAlign: TextAlign.start,
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        color: textColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const SizedBox(
                height: 5,
              ),
              Text(
                'Created by $creator',
                overflow: TextOverflow.ellipsis,
                maxLines: 3,
                textAlign: TextAlign.start,
                style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                    color: textColor,
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        // margin: EdgeInsets.all(100.0),
                        decoration: BoxDecoration(
                          color: whiteColor,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.all(7),
                        child: const Icon(
                          CupertinoIcons.doc_fill,
                          color: secondaryColor,
                          size: 15,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        '$filesNo Files',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                        textAlign: TextAlign.start,
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            color: textColor,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        // margin: EdgeInsets.all(100.0),
                        decoration: BoxDecoration(
                          color: whiteColor,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        padding: const EdgeInsets.all(7),
                        child: Icon(
                          CupertinoIcons.clock_fill,
                          color: color,
                          size: 15,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        duration,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                        textAlign: TextAlign.start,
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            color: textColor,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
                ],
              ),
              
              
            ],
          ),
        ),
      ),
    );
  }
}
