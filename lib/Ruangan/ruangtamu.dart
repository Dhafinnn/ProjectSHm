import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:smarthome/modul%20ruangan/tombol_fan.dart';
import 'package:smarthome/modul%20ruangan/tombol_lampu.dart';
import 'package:smarthome/mqtt.dart';
import 'package:smarthome/providers/lampu_provider.dart';

class Ruangtamu extends StatefulWidget {
  const Ruangtamu({super.key});

  @override
  State<Ruangtamu> createState() => _RuangtamuState();
}

class _RuangtamuState extends State<Ruangtamu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        foregroundColor: Colors.white,
      ),
      body: Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Smart',
                          style: GoogleFonts.poppins(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.black, // Warna untuk "Smart"
                          ),
                        ),
                        TextSpan(
                          text: 'Home',
                          style: GoogleFonts.poppins(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue, // Warna untuk "Home"
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "Ruangtamu",
                    style: GoogleFonts.poppins(fontSize: 30),
                  ),
                ),
                const SizedBox(height: 30),
                const Divider(color: Colors.lightBlueAccent, thickness: 5),
                const SizedBox(height: 10),
                Consumer<LampuProvider>(
                  builder: (context, status, _) {
                    return Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TombolLampu(
                              isHidup: status.isHidup1,
                              onPressed: () {
                                if (status.isHidup1) {
                                  kirimPesan("02222");
                                } else {
                                  kirimPesan("12222");
                                }
                                status.statusLampu1(!status.isHidup1);
                              }),
                          TombolFan(
                              isFan: status.isFan,
                              onPressed: () {
                                if (status.isFan) {
                                  kirimPesan("22220");
                                } else {
                                  kirimPesan("22221");
                                }
                                status.statusfan(!status.isFan);
                              })
                        ],
                      ),
                    );
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
