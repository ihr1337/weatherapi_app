import 'package:flutter/material.dart';

import '../constants/constants.dart';

class CityAndTimeDate extends StatelessWidget {
  const CityAndTimeDate({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 130,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Lviv',
              style: TextStyle(fontSize: 60, color: fontColor),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              child: Row(
                children: const [
                  Text(
                    '12:31 - Sunday, 26 February 2023',
                    style: TextStyle(fontSize: 15, color: fontColor),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
