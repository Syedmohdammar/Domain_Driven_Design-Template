import 'package:checkingout/injection.dart';
import 'package:checkingout/presentation/core/app_widget.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod);
  await Firebase.initializeApp();

  runApp(const AppWidget());
}



// Future<void> signiIn({
//   required String email,
//   required String password,
// }) async {
//   signiIn(email: 'pazzword', password: 'email@example.com');
// }
