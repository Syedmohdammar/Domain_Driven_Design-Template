import 'package:flutter/material.dart';

import '../sign_in/widgets/sign_in_page.dart';

// import '../sign_in/sign_in_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      title: 'Notes',
      debugShowCheckedModeBanner: false,
      home: const SignInPage(),
      theme: ThemeData.light().copyWith(
          primaryColor: Colors.green[800],
          colorScheme:
              ColorScheme.fromSwatch().copyWith(secondary: Colors.blueAccent),
          inputDecorationTheme: InputDecorationTheme(
              border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ))),
    );
  }
}
