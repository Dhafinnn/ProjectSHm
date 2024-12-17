import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:smarthome/providers/lampu_provider.dart';

Widget infotab() {
  return Padding(
    padding: const EdgeInsets.all(25),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
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
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Image.asset(
                  "images/tempera.gif",
                  height: 40,
                  width: 40,
                ),
                const SizedBox(height: 10),
                Consumer<LampuProvider>(builder: (context, status, _) {
                  return Text(
                    "${status.suhu}°",
                    style: GoogleFonts.poppins(),
                    textAlign: TextAlign.center,
                  );
                }),
              ],
            ),
          ),
          const SizedBox(
            height: 100,
            child: VerticalDivider(
              color: Colors.lightBlueAccent,
              thickness: 2,
            ),
          ),
          Expanded(
            child: Consumer<LampuProvider>(builder: (context, status, _) {
              return Column(
                children: [
                  Image.asset(
                    status.isDoor ? "images/pintu.gif" : "images/door.png",
                    height: 40,
                    width: 40,
                    color: status.isDoor ? Colors.green : Colors.red,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    status.isDoor ? "Pintu Terbuka" : "Pintu Tertutup",
                    style: GoogleFonts.poppins(),
                    textAlign: TextAlign.center,
                  )
                ],
              );
            }),
          ),
          const SizedBox(
            height: 100,
            child: VerticalDivider(
              color: Colors.lightBlueAccent,
              thickness: 2,
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Image.asset(
                  "images/kelembapan.gif",
                  height: 40,
                  width: 40,
                ),
                const SizedBox(height: 10),
                Consumer<LampuProvider>(builder: (context, status, _) {
                  return Text(
                    "${status.humidity}°",
                    style: GoogleFonts.poppins(),
                    textAlign: TextAlign.center,
                  );
                }),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
