import 'package:flutter/material.dart';
import 'package:nsapps_mod/desktop/t3.dart';
import 'package:nsapps_mod/home.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nsapps_mod/test0.dart';
import 'package:nsapps_mod/test3.dart';


void main() {
// WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NS APPS INNOVATIONS',
      theme: ThemeData(
          primarySwatch: Colors.amber,
          fontFamily: GoogleFonts.archivoBlack().fontFamily),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeMain(title: 'Ns',),
        // '/' : (context) => TapToScroll(),
        // '/' : (context) => ZoomOnScrollContainer(),
        
      },
    );
  }
}
