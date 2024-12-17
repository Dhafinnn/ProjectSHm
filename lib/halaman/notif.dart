
import 'package:flutter/material.dart';
import 'package:smarthome/modul%20halaman/anakan_notif.dart';

class Notif extends StatelessWidget {
  const Notif({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Notifikasi",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.lightBlueAccent,
        foregroundColor: Colors.white,
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: ListView(
          children: [
            const Divider(
              color:Colors.lightBlueAccent,
            ),
            pesan(),
            const Divider(
              color:Colors.lightBlueAccent,
            ),
            pesan(),
            const Divider(
              color:Colors.lightBlueAccent,
            ),
            pesan(),
          ],
        ),
      ),
    );
  }
}
