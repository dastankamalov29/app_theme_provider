import 'package:app_theme_change/providers/theme_provider.dart';
import 'package:app_theme_change/screens/dark_light_theme.dart';
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
    return ChangeNotifierProvider(
      create:(context)=>ThemeProvider(),
      builder:(context,child){
        final provider = Provider.of<ThemeProvider>(context);
        return MaterialApp(
        title: 'Flutter Demo',
        themeMode: provider.themeState,
        darkTheme: ThemeData(brightness: Brightness.dark),
        theme: ThemeData(brightness: Brightness.light),
        debugShowCheckedModeBanner: false,
        home: const DarkLightTheme(),
      );
      }
    );
  }
}