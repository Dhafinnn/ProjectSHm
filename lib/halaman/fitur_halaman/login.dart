import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sign_in_button/sign_in_button.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.lightBlueAccent,
        elevation: 0,
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white
        ),
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 120,
                  decoration: const BoxDecoration(
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.elliptical(60, 60),
                      bottomRight: Radius.elliptical(60, 60),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Container(
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: const Icon(
                        Icons.person,
                        size: 50,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    children: [
                      Text(
                        "Login",
                        style: GoogleFonts.poppins(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Isi halaman form",
                        style: GoogleFonts.poppins(fontSize: 20),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      formisi("Email", "Isi alamat email anda"),
                      const SizedBox(
                        height: 20,
                      ),
                      formisi("Password", "Password"),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Lupa Password ?",
                        style: GoogleFonts.poppins(color: Colors.blue),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Column(
                        children: [
                          SignInButton(Buttons.google, onPressed: () {}),
                          const SizedBox(
                            height: 10,
                          ),
                          SignInButton(Buttons.email, onPressed: () {})
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Center(
                        child: Container(
                          width: 200,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.lightBlueAccent,
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Center(
                            child: Text(
                              "Login",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Pengguna baru?",
                            style: GoogleFonts.poppins(),
                          ),
                          Text(
                            "Sign up",
                            style: GoogleFonts.poppins(color: Colors.blue),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget formisi(String format, String hint) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          format,
          style: GoogleFonts.poppins(),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 0.5, color: Colors.lightBlueAccent),
          ),
          child: TextField(
            showCursor: true,
            autocorrect: false,
            decoration:
                InputDecoration(border: InputBorder.none, hintText: hint),
            onChanged: (value) {},
          ),
        ),
      ],
    );
  }
}