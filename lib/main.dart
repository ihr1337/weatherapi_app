import 'package:flutter/material.dart';

import 'widgets/widgets_exports.dart';

void main() => runApp(const MaterialApp(home: MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Stack(
        children: [
          Image.asset(
            'assets/images/sunny1.jpg',
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              title: const Text('weather api app'),
            ),
            body: CustomScrollView(scrollDirection: Axis.vertical, slivers: [
              SliverFillRemaining(
                child: Center(
                  child: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: const [
                          SearchBar(),
                          CityAndTimeDate(),
                          TempAndConditions(),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
