import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Infoapp extends StatefulWidget {
  const Infoapp({super.key});

  @override
  State<Infoapp> createState() => _InfoappState();
}

class _InfoappState extends State<Infoapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        foregroundColor: Colors.white,
        title:  Text(
          "Info Aplikasi",
          style: GoogleFonts.poppins(color: Colors.white),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white
        ),
        child: ListView(
          children: [
            anakan("Versi Aplikasi", "000-0001v"),
            const Divider(
              color: Colors.black,
            ),
            anakan("Tingkat patch keamanan aplikasi", "1 juni 2024"),
            const Divider(
              color: Colors.black,
            ),
            anakan("Nomor aplikasi", "BT-001")
          ],
        ),
      ),
    );
  }

  Widget anakan(String nama, String detail) {
    return SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: ListTile(
            title: Text(nama,style: GoogleFonts.poppins(),),
            trailing: Text(detail,style: GoogleFonts.poppins(),),
          ),
        ));
  }
}