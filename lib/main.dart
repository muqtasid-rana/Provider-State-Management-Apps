import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_1/Provider/count_provider.dart';
import 'package:provider_1/Screens/fav_example.dart';
import 'package:provider_1/Provider/fav_provider.dart';
import 'package:provider_1/Screens/login_example.dart';
import 'package:provider_1/Provider/login_provider.dart';
import 'package:provider_1/Provider/slider_provider.dart';
import 'package:provider_1/Screens/theme_example.dart';
import 'package:provider_1/Provider/theme_provider.dart';
import 'package:provider_1/Screens/value_notifier.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => CountProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => SliderProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => FavProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => ThemeProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => AuthProvider(),
        ),
      ],
      child: Builder(
        builder: (context) {
          final themeprovider = Provider.of<ThemeProvider>(context);
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            themeMode: themeprovider.themeMode,
            darkTheme: ThemeData(
              brightness: Brightness.dark,
            ),
            home:  LoginExample(),
          );
        },
      ),
    );
  }
}
