import 'package:app_theme_change/providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DarkLightTheme extends StatefulWidget {
  const DarkLightTheme({super.key});

  @override
  State<DarkLightTheme> createState() => _DarkLightThemeState();
}

class _DarkLightThemeState extends State<DarkLightTheme> {
  bool _isClicked = false;
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Theme"),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                _isClicked = !_isClicked;
              });
              provider.setTheme();
            },
            icon: Icon(
              _isClicked ? Icons.dark_mode : Icons.light_mode,
              color: _isClicked ? Colors.black: Colors.white,
            ),
          ),
        ],
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Text(
                "asdasdaslksdjkdslfnvlkdfsnvdflsjnvdfjklnvlkjdfnvjkldsnvljkndfsjlkvndfslkjvnfdjlknv",
                style: TextStyle(fontSize: 20),
              ),
              Icon(
                Icons.favorite,
                size: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}
