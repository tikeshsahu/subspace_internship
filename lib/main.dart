import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:subspace_internship/explore.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: GoogleFonts.latoTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
        title: 'Subspace Intern',
        home: ExplorePage());
  }
}
