import 'package:animations/animations.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:smarthome/halaman/halaman_utama.dart';
import 'package:smarthome/halaman/notif.dart';
import 'package:smarthome/halaman/profil.dart';
import 'package:smarthome/mqtt.dart';

class Botnav extends StatefulWidget {
  const Botnav({super.key});

  @override
  State<Botnav> createState() => _BotnavState();
}

class _BotnavState extends State<Botnav> {
  List<Widget> navbar = [const Notif(), const HalamanUtama(), const Profil()];
  int indextujuan = 1;

  @override
  void initState() {
    jalankanMqtt(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: CurvedNavigationBar(
        index: indextujuan,
        backgroundColor: Colors.transparent,
        color: Colors.lightBlueAccent,
        buttonBackgroundColor: Colors.lightBlueAccent,
        items: const [
          Icon(Icons.notifications, size: 30, color: Colors.white),
          Icon(Icons.home, size: 30, color: Colors.white),
          Icon(Icons.account_circle_rounded, size: 30, color: Colors.white),
        ],
        onTap: (index) {
          setState(() {
            indextujuan = index;
          });
        },
      ),
      body: PageTransitionSwitcher(
        duration: const Duration(milliseconds: 500),
        transitionBuilder: (child, animation, secondaryAnimation) =>
            FadeThroughTransition(
          animation: animation,
          secondaryAnimation: secondaryAnimation,
          child: child,
        ),
        child: navbar[indextujuan],
      ),
    );
  }
}
