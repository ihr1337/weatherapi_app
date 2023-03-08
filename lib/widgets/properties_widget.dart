import 'package:flutter/material.dart';

Widget buildProperty(String propertyName, String value, String measureSystem) {
  return Padding(
    padding: const EdgeInsets.all(1),
    child: Column(children: [
      Text(
        propertyName,
        style: const TextStyle(fontSize: 20, color: Colors.white),
      ),
      Text(
        value,
        style: const TextStyle(fontSize: 50, color: Colors.white),
      ),
      const SizedBox(
        height: 10,
      ),
      Text(
        measureSystem,
        style: const TextStyle(fontSize: 20, color: Colors.white),
      ),
    ]),
  );
}
