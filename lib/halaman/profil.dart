
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smarthome/halaman/fitur_halaman/info.dart';
import 'package:smarthome/halaman/fitur_halaman/login.dart';
import 'package:smarthome/halaman/fitur_halaman/logout.dart';
import 'package:smarthome/modul%20halaman/anakan_profil.dart';

class Profil extends StatefulWidget {
  const Profil({super.key});

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
         color: Colors.white
        ),
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          children: [
            
            SizedBox(
              width: double.infinity,
              height: 270,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 70,
                    backgroundImage: CachedNetworkImageProvider(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNFhoovR2IvmwKbVIMC11x0LPKP8NoWfZ_6g&s"),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Dhafin",
                    style: GoogleFonts.poppins(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Ganti Profile",
                    style: GoogleFonts.poppins(color: Colors.blue),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            opsi(
                const Icon(Icons.account_circle_outlined,
                    size: 25, color: Colors.white),
                "Nama",
                context,
                const Login(),
                "Dhafin  >"),
            opsi(
                const Icon(
                  Icons.question_mark,
                  size: 25,
                  color: Colors.white,
                ),
                "Info Aplikasi",
                context,
                const Infoapp(),
                ""),
            TextButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => const Logoutbox(),
                );
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: ListTile(
                  title: Text(
                    "Log Out",
                    style: GoogleFonts.poppins(),
                  ),
                  leading: Container(
                    width: 40,
                    height: 40,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.lightBlueAccent),
                    child: const Icon(
                      Icons.logout_outlined,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}