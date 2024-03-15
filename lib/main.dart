import 'package:doitright/view_models/profile_provider.dart';
import 'package:doitright/views/fighter_profile_screen.dart/fighter_profile_screen.dart';
import 'package:doitright/views/login_screen/login_screen.dart';
import 'package:doitright/views/main_screen/main_screen.dart';
import 'package:doitright/views/patterns_screen/patterns_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => ProfileProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: 'Poppins',
          scaffoldBackgroundColor: const Color(0xffCCEFFC),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: LoginScreen(),
      ),
    );
  }
}
