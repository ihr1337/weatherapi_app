import 'package:flutter/material.dart';
import 'package:weatherapi_app/screens/weather.dart';

void main() => runApp(const MaterialApp(home: MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/weather',
      routes: {
        '/weather': (context) => const Weather(),
        // '/loading': (context) => const Loading(),
      },
    );
  }
}
