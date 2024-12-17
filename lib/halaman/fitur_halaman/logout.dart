import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Logoutbox extends StatelessWidget {
  const Logoutbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        margin: const EdgeInsets.all(14),
        
        decoration: BoxDecoration(
          border: Border.all(color: Colors.lightBlueAccent),
            borderRadius: BorderRadius.circular(12), color: Colors.white
            
            ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "images/alert.png",
              width: 72,
            ),
            const SizedBox(height: 24),
            Text(
              "Log out",
              style: GoogleFonts.poppins(
                  fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Text(
              "Kamu akan keluar dari akun ini, lanjutkan?",
              style: GoogleFonts.poppins(),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.red,
                      side: const BorderSide(color: Colors.red),
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 10)),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text("Cancel", style: GoogleFonts.poppins()),
                ),
                const SizedBox(width: 16),
                OutlinedButton(
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.green,
                      side: const BorderSide(color: Colors.green),
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 10)),
                  onPressed: () {},
                  child: Text(
                    "Confirm",
                    style: GoogleFonts.poppins(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}