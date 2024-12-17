import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:smarthome/modul%20ruangan/tombol_lampu.dart';
import 'package:smarthome/mqtt.dart';
import 'package:smarthome/providers/lampu_provider.dart';

class Kamar extends StatefulWidget {
  const Kamar({super.key});

  @override
  State<Kamar> createState() => _KamarState();
}

class _KamarState extends State<Kamar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        foregroundColor: Colors.white,
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white
        ),
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
                            color: Colors.black, 
                          ),
                        ),
                        TextSpan(
                          text: 'Home',
                          style: GoogleFonts.poppins(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.lightBlueAccent, 
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "Kamar",
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
                              isHidup: status.isHidup3,
                              onPressed: () {
                                if (status.isHidup3) {
                                  kirimPesan("22022");
                                } else {
                                  kirimPesan("22122");
                                }
                                status.statusLampu3(!status.isHidup3);
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
