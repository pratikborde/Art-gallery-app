import 'package:art_gallery_app/elements/homeElement.dart';
import 'package:flutter/material.dart';

void main() => {
      // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark),
      runApp(MyApp()),
    };

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        scaffoldBackgroundColor: Color.fromRGBO(243, 239, 238, 1),
        textTheme: TextTheme(
          title: TextStyle(
            fontFamily: 'Podkova',
            fontWeight: FontWeight.w700,
          ),
          subtitle: TextStyle(
            fontFamily: 'Podkova',
            fontWeight: FontWeight.w500,
          ),
        ),
        // brightness: Brightness.light,
      ),
      home: HomeElement(),
      debugShowCheckedModeBanner: false,
    );
  }
}
