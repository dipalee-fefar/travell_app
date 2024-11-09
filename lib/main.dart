import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:travell_app/Login_Page.dart';
import 'package:travell_app/Second_Page.dart';
import 'package:travell_app/Welcome_Page.dart';
import 'Splash_Screen.dart';
import 'my_database.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen()
      // FutureBuilder(
      //   future: MyDataBase().openAccessDatabase(),
      //   builder: (context, snapshot) {
      //     if (snapshot.hasData) {
      //       if (snapshot.data != null) {
      //         return FutureBuilder(
      //           future: SharedPreferences.getInstance(),
      //           builder: (context, snapshot1) {
      //             if (snapshot1.data != null) {
      //               if (snapshot1.data!.getBool('IsUserLogin') != null &&
      //                   snapshot1.data!.getBool('IsUserLogin')!) {
      //                 return SecondPage();
      //               } else {
      //                 return SplashScreen();
      //               }
      //             } else {
      //               return Center(
      //                 child: Text('ERROR'),
      //               );
      //             }
      //           },
      //         );
      //       } else {
      //         return Center(
      //           child: Text(snapshot.error.toString()),
      //         );
      //       }
      //     } else {
      //       return CircularProgressIndicator();
      //     }
      //   },
      // ),
    );
  }
}
