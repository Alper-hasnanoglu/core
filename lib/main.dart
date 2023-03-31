import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/providers/facilities_provider.dart';
import 'package:untitled/ui/facilities/facilities_page.dart';
import 'package:untitled/ui/login/login_page.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => FacilitiesProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Core Istanbul',
        theme: ThemeData(
          primaryColor: const Color(0xFF742B83),
        ),
        home: const LoginPage(),
      ),
    );
  }
}
