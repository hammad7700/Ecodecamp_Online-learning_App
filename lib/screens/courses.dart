import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomCourses extends StatelessWidget {
  const BottomCourses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Account",style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold
        ),),
        centerTitle: true,
        backgroundColor: Color(0xff2B3086),
      ),
      body: Center(
        child: Text(
          "Courses",
          style: GoogleFonts.poppins(
              fontSize: 24,
              color: Color(0xff2B3086),
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
