import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import 'package:smarthome/Ruangan/dapur.dart';
import 'package:smarthome/Ruangan/kamar.dart';
import 'package:smarthome/Ruangan/ruangtamu.dart';
import 'package:smarthome/Ruangan/toilet.dart';
import 'package:smarthome/halaman/notif.dart';
import 'package:smarthome/modul%20halaman/button_ruangan.dart';
import 'package:smarthome/modul%20halaman/info_tab.dart';
import 'package:smarthome/modul%20halaman/slider.dart';


class HalamanUtama extends StatefulWidget {
  const HalamanUtama({super.key});

  @override
  State<HalamanUtama> createState() => _HalamanUtamaState();
}

class _HalamanUtamaState extends State<HalamanUtama> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: Colors.white
            
            ),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  // border: Border.all(color: Colors.blue),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blue.withOpacity(0.3),
                      spreadRadius: 3,
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                width: double.infinity,
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      width: 80,
                      height: 80,
                      child: const CircleAvatar(
                        backgroundImage: CachedNetworkImageProvider(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQNFhoovR2IvmwKbVIMC11x0LPKP8NoWfZ_6g&s"),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: SizedBox(
                        height: 80,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Dhafin",
                                style: GoogleFonts.poppins(
                                    fontSize: 22, fontWeight: FontWeight.bold)),
                            Text(
                              DateFormat.yMd().add_jm().format(DateTime.now()),
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: InkWell(
                          onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => const Notif()));},
                          child: Image.asset(
                            "images/notif.gif",
                            height: 40,
                            width: 40,
                          )),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            slide(),
            infotab(),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 0, 25, 10),
              child: Row(
                children: [
                  tombol(context, "ruangtamu.png", "Ruang Tamu",
                      const Ruangtamu()),
                  const SizedBox(
                    width: 10,
                  ),
                  tombol(context, "dapur.png", "Dapur", const Dapur()),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 0, 25, 10),
              child: Row(
                children: [
                  tombol(context, "kamar.png", "Kamar", const Kamar()),
                  const SizedBox(
                    width: 10,
                  ),
                  tombol(context, "toilet.png", "Toilet", const Toilet()),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
