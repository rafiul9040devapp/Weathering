import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:weather_app_123/pages/home_page.dart';
import 'package:weather_app_123/pages/settings_page.dart';
import 'package:weather_app_123/provider/weather_provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => WeatherProvider())
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: GoogleFonts.robotoTextTheme(),
        primarySwatch: Colors.blueGrey,
      ),
      darkTheme: ThemeData.dark(),
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (context) => const HomePage(),
        SettingsPage.routeName: (context) => const SettingsPage(),
      },
    );
  }
}
