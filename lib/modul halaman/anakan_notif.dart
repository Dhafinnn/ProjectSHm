
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

Widget pesan() {
  var faker = Faker();
  return SizedBox(
    width: double.infinity,
    child: TextButton(
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: ListTile(
          title:  Text("Peringatan",style: GoogleFonts.poppins(fontWeight: FontWeight.bold),),
          subtitle: Text(
            faker.lorem.sentence(),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.poppins(),
          ),
          leading: const Icon(Icons.notifications),
          trailing: Text(DateFormat.Hm().format(DateTime.now()),style: GoogleFonts.poppins(),),
        ),
      ),
    ),
  );
}