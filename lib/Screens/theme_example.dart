import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_1/Provider/theme_provider.dart';

class ThemeExample extends StatefulWidget {
  const ThemeExample({super.key});

  @override
  State<ThemeExample> createState() => _ThemeExampleState();
}

class _ThemeExampleState extends State<ThemeExample> {
  @override
  Widget build(BuildContext context) {
    final themeprovider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      body: Expanded(
        child: Column(
          children: [
            RadioListTile<ThemeMode>(
              title: Text("Light Mode"),
                value: ThemeMode.light,
                groupValue: themeprovider.themeMode,
                onChanged: themeprovider.setTheme
            ),
            RadioListTile<ThemeMode>(
                title: Text("Dark Mode"),
                value: ThemeMode.dark,
                groupValue: themeprovider.themeMode,
                onChanged: themeprovider.setTheme
            ),
            RadioListTile<ThemeMode>(
                title: Text("System"),
                value: ThemeMode.system,
                groupValue: themeprovider.themeMode,
                onChanged: themeprovider.setTheme
            )
          ],
        ),
      ),
    );
  }
}
