import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../widgets/properties_widget.dart';

class Weather extends StatefulWidget {
  const Weather({super.key});

  @override
  State<Weather> createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Image.asset(
        'assets/images/sunny1.jpg',
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.cover,
      ),
      GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.transparent,
          body: CustomScrollView(scrollDirection: Axis.vertical, slivers: [
            SliverFillRemaining(
              child: Center(
                child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 100,
                          width: double.maxFinite,
                          child: Row(
                            children: [
                              Expanded(
                                  child: Theme(
                                data: ThemeData(primaryColor: Colors.white),
                                child: TextField(
                                    style: const TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(50.0),
                                          borderSide: const BorderSide(
                                              color: Colors.white38)),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(50.0),
                                          borderSide: const BorderSide(
                                              color: Colors.white)),
                                      hintText: 'Search city',
                                      hintStyle:
                                          const TextStyle(color: Colors.white),
                                    )),
                              )),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.send_rounded),
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                            height: 130,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Lviv',
                                  style:
                                      TextStyle(fontSize: 60, color: fontColor),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                SizedBox(
                                  child: Row(
                                    children: const [
                                      Text(
                                        '12:31 - Sunday, 26 February 2023',
                                        style: TextStyle(
                                            fontSize: 15, color: fontColor),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            )),
                        SizedBox(
                            height: 200,
                            width: double.maxFinite,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    '20°',
                                    style: TextStyle(
                                        fontSize: 90, color: fontColor),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  SizedBox(
                                    width: 110,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Icon(Icons.sunny,
                                            size: 40, color: fontColor),
                                        Text('Sunny',
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.w700,
                                                color: fontColor)),
                                      ],
                                    ),
                                  )
                                ])),
                        const SizedBox(
                          height: 50,
                        ),
                        const Divider(
                          thickness: 1,
                          color: Colors.white38,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: SizedBox(
                            width: 320,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                buildProperty('Wind', '54', 'km/h'),
                                buildProperty('Rain', '80', '%'),
                                buildProperty('Humidity', '72', '%'),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    ]);
  }
}
