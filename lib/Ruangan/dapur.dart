import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:smarthome/modul%20ruangan/tombol_lampu.dart';
import 'package:smarthome/mqtt.dart';
import 'package:smarthome/providers/lampu_provider.dart';

class Dapur extends StatefulWidget {
  const Dapur({super.key});

  @override
  State<Dapur> createState() => _DapurState();
}

class _DapurState extends State<Dapur> {
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
                    "Dapur",
                    style: GoogleFonts.poppins(fontSize: 30),
                  ),
                ),
               
                const SizedBox(height: 30),
                const Divider(color: Colors.lightBlueAccent, thickness: 5),
                const SizedBox(height: 10),
                Consumer<LampuProvider>(
                  builder: (context, status, _) {
                    return  Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TombolLampu(
                                isHidup: status.isHidup2,
                                onPressed: () {
                                  if (status.isHidup2) {
                                    kirimPesan("20222");
                                  } else {
                                    kirimPesan("21222");
                                  }
                                  status.statusLampu2(!status.isHidup2);
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
