import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget opsi(Icon aikon, String nama, BuildContext context, Widget fitur,
    String detail) {
  return SizedBox(
    width: double.infinity,
    child: TextButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => fitur));
      },
      style: TextButton.styleFrom(
        backgroundColor: Colors.transparent,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: ListTile(
          title: Text(nama,style: GoogleFonts.poppins(),),
          leading: Container(
            width: 40,
            height: 40,
            decoration:
                const BoxDecoration(shape: BoxShape.circle, color: Colors.lightBlueAccent),
            child: aikon,
          ),
          trailing: Text(detail,style: GoogleFonts.poppins(),),
        ),
        
      ),
    ),
  );
}