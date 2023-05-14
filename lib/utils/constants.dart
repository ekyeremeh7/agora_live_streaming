import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'custom_icons.dart';

//MULTIPLE SCREEN CONSTANTS
const String alreadyHaveAnAccountText = 'Already have an account ?';

TextStyle kUpdateTextStyle = GoogleFonts.inter(
  color: Colors.white,
  fontSize: 15,
  fontWeight: FontWeight.w600,
);

Widget facebookIcon = SvgPicture.asset(
  CustomIcons.example.name,
  semanticsLabel: CustomIcons.example.description,
  height: 25,
);


