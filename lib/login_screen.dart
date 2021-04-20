import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_register/register_screen.dart';
import 'package:login_register/theme.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.only(top: 60, bottom: 84),
            child: Center(
              child: Column(
                children: [
                  SvgPicture.asset('assets/mobile.svg'),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Welcome Back',
                    style: GoogleFonts.montserrat(
                      color: blackColor,
                      fontWeight: FontWeight.w800,
                      fontSize: 25,
                    ),
                  ),
                  Text(
                    'Sign to continue',
                    style: GoogleFonts.montserrat(
                      color: blackColor,
                      fontWeight: FontWeight.w300,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  Container(
                    width: 200,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Username',
                        hintStyle: GoogleFonts.montserrat(
                          color: blackColor.withOpacity(0.5),
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                        ),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Container(
                    width: 200,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: GoogleFonts.montserrat(
                          color: blackColor.withOpacity(0.5),
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                        ),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: 200,
                    alignment: Alignment.bottomRight,
                    child: Text(
                      'Forgot Password?',
                      style: GoogleFonts.roboto(
                        color: lightBlueColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  Container(
                    width: 205,
                    height: 50,
                    decoration: BoxDecoration(
                      color: lightBlueColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Login',
                        style: GoogleFonts.montserrat(
                          color: whiteColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Text.rich(
                    TextSpan(
                      text: 'Dont have account?',
                      style: GoogleFonts.roboto(
                        color: blackColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                      children: [
                        TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => RegisterScreen(),
                                ),
                              );
                            },
                          text: ' Create new account',
                          style: TextStyle(
                            color: lightBlueColor,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
