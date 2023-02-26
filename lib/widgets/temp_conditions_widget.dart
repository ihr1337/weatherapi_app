import 'package:flutter/material.dart';
import 'package:weatherapi_app/constants/constants.dart';

class TempAndConditions extends StatelessWidget {
  const TempAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 200,
        width: double.maxFinite,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '20°',
                style: TextStyle(fontSize: 90, color: fontColor),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 110,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(Icons.sunny, size: 40, color: fontColor),
                    Text('Sunny',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: fontColor)),
                  ],
                ),
              )
            ]));
  }
}
