import 'package:edu/Screens/CourseScreen/components/mycourse_card.dart';
import 'package:edu/Screens/HomeScreen/components/course_card.dart';
import 'package:edu/Widgets/rounded_button.dart';
import 'package:edu/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class LoginScreen extends StatefulWidget {
  String error;
  LoginScreen({Key? key, this.error = 'Something Went Wrong'})
      : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool loading = false;
  int buttonCategoryNumber = 0;
  ScrollController _scrollController = ScrollController();
  final _formKey = GlobalKey<FormState>();

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
          "Sign In",
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
          // IconButton(
          //   onPressed: () {},
          //   icon: const Icon(
          //     CupertinoIcons.search,
          //     color: darkColor,
          //   ),
          // )
        ],
        // toolbarHeight: 90,
        backgroundColor: whiteColor,
        foregroundColor: darkColor,
        centerTitle: true,
      ),
      backgroundColor: whiteColor,
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Form(
                  key: _formKey,
                  child: Container(
                    margin: const EdgeInsets.all(30),
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Image.asset(
                              "assets/images/signin.png",
                              width: 500,
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Text(
                            "Email",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            textAlign: TextAlign.start,
                            style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                color: darkColor,
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            style: const TextStyle(color: darkColor),
                            validator: (val) {
                              if (val!.isEmpty) {
                                return 'Enter email';
                              } else {
                                return null;
                              }
                            },
                            keyboardType: TextInputType.emailAddress,
                            onChanged: (val) {
                              //
                            },
                            decoration: InputDecoration(
                              errorBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.red, width: 1.0),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: darkColor.withOpacity(0.7),
                                    width: 1.0),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: darkColor.withOpacity(0.7),
                                    width: 1.0),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              hintStyle: TextStyle(
                                  color: darkDarkColor.withOpacity(0.7)),
                              hintText: 'Email',
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: darkColor.withOpacity(0.7),
                                    width: 1.0),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Password",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            textAlign: TextAlign.start,
                            style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                color: darkColor,
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            style: const TextStyle(color: darkColor),
                            validator: (val) {
                              if (val!.isEmpty) {
                                return 'Enter password';
                              } else {
                                return null;
                              }
                            },
                            keyboardType: TextInputType.visiblePassword,
                            onChanged: (val) {
                              //
                            },
                            decoration: InputDecoration(
                              errorBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.red, width: 1.0),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: darkColor.withOpacity(0.7),
                                    width: 1.0),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: darkColor.withOpacity(0.7),
                                    width: 1.0),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              hintStyle: TextStyle(
                                  color: darkDarkColor.withOpacity(0.7)),
                              hintText: 'Password',
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: darkColor.withOpacity(0.7),
                                    width: 1.0),
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Center(
                            child: Container(
                              width: size.width * 0.8,
                              child: CupertinoButton(
                                borderRadius: BorderRadius.circular(30.0),
                                padding: const EdgeInsets.all(10),
                                color: primaryColor,
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {}
                                },
                                child: Text(
                                  'Sign In',
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
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Center(
                            child: Container(
                              width: size.width * 0.8,
                              child: CupertinoButton(
                                borderRadius: BorderRadius.circular(30.0),
                                padding: const EdgeInsets.all(10),
                                color: secondaryColor,
                                onPressed: () {},
                                child: Text(
                                  'Social Media',
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
                          )
                        ],
                      ),
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
